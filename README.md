# Trexxet
## Moving truck rental (by Giang Dao)
## Description
In this project, I created a database system for a moving truck rental company by utilizing MySQL and Python Flask. MySQL is used for generating database, and Python Flask is used for User Interface.

## Business Rule
* The project illustrates an interactive web service between Customer and the company.
* Customer can create an account on the web with their name, email, username, and password. One customer can only have one username.
* User can reserve multiple trucks, and a truck can be assigned to multiple user given different time.
* Each reservation will have a transaction associated with it.
* User can access their own Reservation and Transaction information.
* An user can make reservation and pay. The reservation will be record after the payment is success.
* User can also delete those information if start date of the reservation is not due.
* Admin is an user who can access all Reservation and Transaction information from all other users, but cannot delete those information.
* Admin user can also delete trucks that have not been reserved.

## EERD
Fully implemented and functioning<br>
<center>![EERD](./imgs/eerd.png)</center>

## SQL file
In **Data** folder

## User Interface and Advanced SQL
### Normal User
&nbsp;&nbsp;&nbsp;&nbsp;Home page. Customer can choose to Sign Up or Login<br>
<center>![HomePage](./imgs/homepage.png?raw=true)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Register page. Customer is required to input fields<br>
<center>![RegisterPge](./imgs/register.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Login page. Login using username and password<br>
<center>![LoginPage](./imgs/login.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Reservation Page. User can see their reservation listed. User can also delete a reservation if the start date is not due<br>
<center>![Reservation1](./imgs/reservation.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Make Reservation Page. User can choose location and time. If user cancel, page will go back to reservation. If user choose to proceed, page will move to Payment page. The system will automatic calculate the rental time (by minute) and charge $35 for 30 minutes<br>
<center>![MakeReservation](././imgs/makereservation.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Make Payment Page. User needs to input their credit card information in order to pay (temporary accept all 16 digit credit card). A reservation and a transaction will be insert to tables only if user choose to pay<br>
<center>![MakePayment](./imgs/makepayment.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;New reservation appear<br>
<center>![NewReservation](./imgs/newreservation.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Transaction Page
<center>![Transaction](./imgs/transaction.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;User can delete a reservation
<center>![DeleteReservation](./imgs/deletereservation.png)</center>

### Admin User
&nbsp;&nbsp;&nbsp;&nbsp;Check all Reservation<br>
<center>![checkreservation](./imgs/checkreservation.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Check all Transaction<br>
<center>![checktransaction](./imgs/checktransaction.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Check all Truck<br>
<center>![checkalltruck](./imgs/checkalltruck.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Add new Truck<br>
<center>![addnewtruck](./imgs/addnewtruck.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Delete a truck (not reserved). A deleted truck will be move to Trigger<br>
<center>![deletetruck](./imgs/deletetruck.png)</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;Edit a truck location
<center>![edittruck](./imgs/edittruck.png)</center>

### Advanced SQL
&nbsp;&nbsp;&nbsp;&nbsp;Trigger Advanced SQL
<center>![trigger](./imgs/trigger2.png)</center>
