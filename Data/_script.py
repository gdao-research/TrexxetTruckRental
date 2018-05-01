import numpy as np
import random
import time

CITY = ['Charlotte', 'New York', 'New Orleans', 'Charleston',
        'Wilmington', 'Durham', 'Washington DC', 'Greensboro',
        'Atlanta', 'Birmingham', 'Savannah', 'Pittsburgh',
        'Norfolk', 'Raleigh', 'Orlando', 'Miami', 'Boston',
        'Baltimore', 'Philadelphia', 'Nashville', 'Louisville',
        'Indianapolis', 'Columbus', 'Columbus', 'St. Louis',
        'Chicago', 'Memphis', 'Detroit', 'Cleveland', 'Houston']

FORMAT = '%Y-%m-%d %H:%M:%S'

def strTimeProp(start, end, prop):
    """Get a time at a proportion of a range of two formatted times.

    start and end should be strings specifying times formated in the
    given format (strftime-style), giving an interval [start, end].
    prop specifies how a proportion of the interval to be taken after
    start.  The returned time will be in the specified format.
    """

    stime = time.mktime(time.strptime(start, FORMAT))
    etime = time.mktime(time.strptime(end, FORMAT))
    ptime = stime + prop * (etime - stime)

    return time.strftime(FORMAT, time.localtime(ptime))

def get_fromDate(start, end):
    return strTimeProp(start, end, random.random())

def get_toDate(fromDate, minutes):
    stime = time.mktime(time.strptime(fromDate, FORMAT))
    toDate = stime + minutes*60
    return time.strftime(FORMAT, time.localtime(toDate))

# fromDate = randomDate("2008-1-1 1:30:00", "2009-1-1 1:30:00", 1)
# print(str(fromDate))
# print(get_toDate(fromDate, 60))

idx_res = np.random.choice(np.arange(100), 30, replace=False)
user_res = []
vin_res = []

wr = open('./insertUser.sql', 'w')
with open('./insertCustomer.sql', 'r') as f:
    for j, line in enumerate(f):
        # print(line)
        indices = [i for i, x in enumerate(line) if x == "\""]
        email = line[indices[-2]+1:indices[-1]]
        if j in idx_res:
            user_res.append('user{}'.format(j))
        # print(line[indices[-2]+1:indices[-1]])
        t = """INSERT INTO `User` (`userName`, `password`, `isVIP`, `Customer_email`) VALUES('user{}','password{}', 0, '{}');\n""".format(j, j, email)
        wr.write(t)
wr.close()

wr = open('./insertTruck.sql', 'w')
v_l = '1 2 3 4 5 6 7 8 9 0 Q W E R T Y U I O P A S D F G H J K L Z X C V B N M'
v_letters = v_l.split(' ')
for i in range(100):
    v_c = np.random.choice(v_letters, 17)
    v = ''.join(v_c)
    if i in idx_res:
        vin_res.append(v)
    t = """INSERT INTO `Truck` (`VIN`, `isAvailable`, `truckLocation`) VALUES('{}',1,'Charlotte');\n""".format(v)
    wr.write(t)
wr.close()

wr = open('./insertReservation.sql', 'w')
wr_truck = open('./updateTruck.sql', 'w')
rentMinutes = []
for i in range(30):
    fromDate = get_fromDate('2018-1-2 8:00:00', '2018-8-20 23:59:59')
    rentMinute = np.random.randint(low=30, high=2*86400/60)
    rentMinutes.append(rentMinute)
    toDate = get_toDate(fromDate, rentMinute)
    fromLocation = CITY[np.random.choice(len(CITY), 1)[0]]
    toLocation = CITY[np.random.choice(len(CITY), 1)[0]]
    vin = vin_res[i]
    user = user_res[i]
    res_id = i
    t = """INSERT INTO `Reservation` VALUES('{}', '{}', 'res{}', '{}', '{}', {}, '{}', '{}');\n""".format(user, vin, res_id, fromLocation, toLocation, rentMinute, fromDate, toDate)
    wr.write(t)
    t = """UPDATE `Truck` SET truckLocation='{}' WHERE VIN='{}';\n""".format(toLocation, vin)
    wr_truck.write(t)
    if time.mktime(time.strptime(toDate, FORMAT)) - time.mktime(time.localtime()) > 0:
        t = """UPDATE `Truck` SET isAvailable={} WHERE VIN='{}';\n""".format(0, vin)
        wr_truck.write(t)
wr.close()

wr = open('./insertPayment.sql', 'w')
for i in range(30):
    res_id = i
    pay_id = i
    vin = vin_res[i]
    user = user_res[i]
    amount = 35*rentMinutes[i]/30
    t = """INSERT INTO `Payment` VALUES('{}', '{}', 'res{}', 'pay{}', {:.2f});\n""".format(user, vin, res_id, pay_id, amount)
    wr.write(t)
wr.close()
