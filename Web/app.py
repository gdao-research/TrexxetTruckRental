from flask import Flask, render_template, flash, redirect, url_for, session, request, logging
from flask_mysqldb import MySQL
from wtforms import Form, StringField, TextAreaField, PasswordField, DateTimeField, validators
from passlib.hash import sha256_crypt
from functools import wraps
import numpy as np
from datetime import datetime
import time

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '12'
app.config['MYSQL_DB'] = 'mydb'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)

FORMAT = '%Y-%m-%d %H:%M:%S'
def check_date(in_date):
    return datetime.now() < in_date

def get_total_rent(s, e):
    print(s)
    start = time.mktime(time.strptime(s, FORMAT))
    end = time.mktime(time.strptime(e, FORMAT))
    return (end - start)/60

class AddTruckForm(Form):
    vin = StringField('VIN', [validators.Length(min=17, max=17)])
    location = StringField('Location', [validators.Length(min=3, max=20)])

class PaymentForm(Form):
    creditCard = StringField('Account Number', [validators.Length(min=16, max=16)])
    billingAddress = StringField('Billing Address', [validators.Length(min=1, max=100)])
    code = StringField('CVV Code', [validators.Length(min=3, max=4)])

class MakeReservationForm(Form):
    fromloc = StringField('From Location', [validators.Length(min=2, max=45)])
    toloc = StringField('To Location', [validators.Length(min=2, max=45)])
    fromdate = StringField('From Date and Time (in yyyy-mm-dd hh:mm:ss)', [validators.Length(min=18, max=20)])
    todate = StringField('To Date and Time (in yyyy-mm-dd hh:mm:ss)', [validators.Length(min=18, max=20)])
    totalrent = StringField('Estimate Total Time Rent (in minute)')

class RegisterForm(Form):
    firstname = StringField('First Name', [validators.Length(min=2, max=45)])
    lastname = StringField('Last Name', [validators.Length(min=2, max=45)])
    email = StringField('Email', [validators.Length(min=6, max=100)])
    username = StringField('Username', [validators.Length(min=2, max=20)])
    password = PasswordField('Password', [validators.DataRequired(), validators.EqualTo('confirm', message='Passwords do not match')])
    confirm = PasswordField('Confirm Password')

def is_logged_in(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'logged_in' in session:
            return f(*args, **kwargs)
        else:
            flash('Unauthorized, Please login', 'danger')
            return redirect(url_for('login'))
    return wrap

@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegisterForm(request.form)
    if request.method == 'POST' and form.validate():
        firstname = form.firstname.data
        lastname = form.lastname.data
        email = form.email.data
        username = form.username.data
        password = str(form.password.data)

        cur = mysql.connection.cursor()
        cur.execute("""INSERT INTO Customer(email, lastName, firstName) VALUES('{}', '{}', '{}')""".format(email, lastname, firstname))
        cur.execute("""INSERT INTO User(userName, password, isVIP, Customer_email) VALUES('{}', '{}', 0, '{}')""".format(username, password, email))
        mysql.connection.commit()
        cur.close()
        flash('Your are now registered and can log in', 'success')
        return redirect(url_for('login'))
    return render_template('register.html', form=form)

@app.route('/add_truck', methods=['GET', 'POST'])
@is_logged_in
def add_truck():
    form = AddTruckForm(request.form)
    if request.method == 'POST':
        if request.form['submit'] == 'Cancel':
            return redirect(url_for('reservation'))
        elif request.form['submit'] == 'Add' and form.validate():
            vin = form.vin.data
            location = form.location.data
            cur = mysql.connection.cursor()
            cur.execute("""INSERT INTO Truck VALUES('{}', 1, '{}')""".format(vin, location))
            mysql.connection.commit()
            return redirect(url_for('truck'))
        cur.close()
    return render_template('add_truck.html', form=form)

@app.route('/logout')
@is_logged_in
def logout():
    session.clear()
    flash('You are now logged out', 'success')
    return redirect(url_for('login'))

@app.route('/truck')
@is_logged_in
def truck():
    cur = mysql.connection.cursor()
    result = cur.execute("""SELECT * FROM Truck""")
    if result > 0:
        res = cur.fetchall()
        for i in range(len(res)):
            res[i]['rm'], res[i]['isAvailableBool'], res[i]['value'] = ('RESERVED', False, 'btn btn-basic') if res[i]['isAvailable'] == 0 else ('DELETE', True, 'btn btn-danger')
        return render_template('truck.html', truc=res)
    else:
        error = 'No Truck found'
        return render_template('truck.html', error=error)
    cur.close()

@app.route('/edit_truck/<string:id>', methods=['GET', 'POST'])
@is_logged_in
def edit_truck(id):
    form = AddTruckForm(request.form)
    if request.method == 'POST':
        if request.form['submit'] == 'Cancel':
            return redirect(url_for('truck'))
        elif request.form['submit'] == 'Edit':
            location = form.location.data
            cur = mysql.connection.cursor()
            cur.execute("""UPDATE Truck SET truckLocation='{}' WHERE VIN='{}'""".format(location, id))
            mysql.connection.commit()
            cur.close()
            flash('Truck VIN {} location has been updated to {}'.format(id, location), 'success')
            return redirect(url_for('truck'))

    return render_template('edit_truck.html', form=form)

@app.route('/delete_truck/<string:id>', methods=['POST'])
@is_logged_in
def delete_truck(id):
    if 'DELETE' in id:
        idx = [i for i,a in enumerate(id) if a == '\'']
        vin = id[idx[0]+1:idx[1]]
        cur = mysql.connection.cursor()
        cur.execute("""DELETE FROM Truck WHERE VIN='{}'""".format(vin))
        mysql.connection.commit()
        cur.close()
        flash('Truck VIN {} Deleted'.format(vin), 'danger')
    return redirect(url_for('truck'))

@app.route('/check_reservation')
@is_logged_in
def check_reservation():
    cur = mysql.connection.cursor()
    result = cur.execute("""SELECT * FROM Reservation""")
    if result > 0:
        res = cur.fetchall()
        return render_template('/check_reservation.html', res=res)
    cur.close()
    return render_template('/check_reservation.html')

@app.route('/check_payment')
@is_logged_in
def check_payment():
    cur = mysql.connection.cursor()
    result = cur.execute("""SELECT * FROM Payment""")
    if result > 0:
        trans = cur.fetchall()
        return render_template('/check_payment.html', trans=trans)
    cur.close()
    return render_template('/check_payment.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password_candidate = request.form['password']
        cur = mysql.connection.cursor()
        result = cur.execute("""SELECT * FROM User WHERE userName='{}'""".format(username))

        if result > 0:
            data = cur.fetchone()
            password = data['password']
            isVIP = data['isVIP']
            email = data['Customer_email']

            if password_candidate == password:
                session['logged_in'] = True
                session['username'] = username
                flash("You are now logged in", "success")
                if username == 'admin':
                    session['is_admin'] = True
                    return redirect(url_for('truck'))
                else:
                    session['is_admin'] = False
                    return redirect(url_for('reservation'))
            else:
                error = 'Invalid login'
                return render_template('login.html', error=error)
            cur.close()
        else:
            error = 'Username not found'
            return render_template('login.html', error=error)
    return render_template('login.html')

@app.route('/make_reservation', methods=['GET', 'POST'])
@is_logged_in
def make_reservation():
    form = MakeReservationForm(request.form)
    if request.method == 'POST':
        if request.form['submit'] == 'Cancel':
            return redirect(url_for('reservation'))
        elif request.form['submit'] == 'Proceed' and form.validate():
            fromloc = form.fromloc.data
            toloc = form.toloc.data
            fromdate = form.fromdate.data
            todate = form.todate.data
            # totalrent = int(form.totalrent.data)
            totalrent = get_total_rent(fromdate, todate)
            cur = mysql.connection.cursor()
            result = cur.execute("""SELECT * FROM Truck WHERE truckLocation='{}' AND isAvailable=1""".format(fromloc))
            if result > 0:
                data = cur.fetchone()
                username = session['username']
                vin = data['VIN']
                result = cur.execute("SELECT reservationID FROM Reservation")
                data = cur.fetchall()
                n = np.max([int(data[i]['reservationID'][3:]) for i in range(len(data))])
                resID = 'res' + str(n+1)

                session['amount'] = float("{:.2f}".format(totalrent*35.0/30.))
                session['resID'] = resID
                session['vin'] = vin
                session['fromloc'] = fromloc
                session['toloc'] = toloc
                session['fromdate'] = fromdate
                session['todate'] = todate
                session['totalrent'] = totalrent
                return redirect(url_for('payment'))
            else:
                error = 'Truck is not available in this location'
                return render_template('make_reservation.html', error=error)
            cur.close()
    return render_template('make_reservation.html', form=form)

@app.route('/payment', methods=['GET', 'POST'])
@is_logged_in
def payment():
    form = PaymentForm(request.form)
    if request.method == 'POST':
        if request.form['submit'] == 'Cancel':
            return redirect(url_for('reservation'))

        elif request.form['submit'] == 'Pay' and form.validate():
            # creditCard = form.creditCard.data
            # billingAddress = form.billingAddress.data
            # code = form.code.data
            payID = 'pay' +str(session['resID'][3:])
            cur = mysql.connection.cursor()
            cur.execute("""UPDATE Truck SET isAvailable=0 WHERE VIN='{}'""".format(session['vin']))
            cur.execute("""INSERT INTO Reservation(User_userName, Truck_VIN, reservationID, fromLocation, toLocation, rentMinutes, fromDate, toDate) VALUES('{}', '{}', '{}', '{}', '{}', {}, '{}', '{}')""".format(session['username'], session['vin'], session['resID'], session['fromloc'], session['toloc'], session['totalrent'], session['fromdate'], session['todate']))
            cur.execute("""INSERT INTO Payment VALUES('{}', '{}', '{}', '{}', {:.2f})""".format(session['username'], session['vin'], session['resID'], payID, session['amount']))

            mysql.connection.commit()
            flash('Make Reservation Success', 'success')
            return redirect(url_for('reservation'))

        cur.close()
    return render_template('payment.html', form=form)

@app.route('/transaction')
@is_logged_in
def transaction():
    cur = mysql.connection.cursor()
    result = cur.execute("""SELECT * FROM Payment WHERE Reservation_User_userName='{}'""".format(session['username']))
    if result > 0:
        trans = cur.fetchall()
        return render_template('transaction.html', trans=trans)
    else:
        error = 'No Transaction found'
        return render_template('transaction.html', error=error)
    cur.close()


@app.route('/reservation')
@is_logged_in
def reservation():
    cur = mysql.connection.cursor()
    result = cur.execute("""SELECT * FROM Reservation WHERE User_userName='{}'""".format(session['username']))
    if result > 0:
        res = cur.fetchall()
        for i in range(len(res)):
            res[i]['rm'], res[i]['value'] = ('DELETE', 'btn btn-danger') if check_date(res[i]['fromDate']) else ('DONE', 'btn btn-basic')
        return render_template('reservation.html', res=res)
    else:
        error = 'No Reservation found'
        return render_template('reservation.html', error=error)
    cur.close()

@app.route('/delete_reservation/<string:id>', methods=['POST'])
@is_logged_in
def delete_reservation(id):
    if 'DELETE' in id:
        idx = [i for i,a in enumerate(id) if a == '\'']
        resid = id[idx[0]+1:idx[1]]
        cur = mysql.connection.cursor()
        cur.execute("""DELETE FROM Payment WHERE Reservation_reservationID='{}'""".format(resid))
        cur.execute("""DELETE FROM Reservation WHERE reservationID='{}'""".format(resid))
        mysql.connection.commit()
        cur.close()
        flash('Reservation ID {} and Payment Deleted'.format(resid), 'danger')
    return redirect(url_for('reservation'))

@app.route('/')
def index():
    cur = mysql.connection.cursor()
    result = cur.execute("SELECT * FROM Reservation")
    data = cur.fetchall()
    print(data[1])
    print(check_date(data[1]['fromDate']))
    cur.close()
    return render_template('home.html')

@app.route('/about')
def about():
    return render_template('about.html')

if __name__ == '__main__':
    app.secret_key = '12'
    app.run(debug=True)
