# Hackshetra

### Instructions to run

To run organiser site

Clone the `master` branch

Type `$npm install`

Install postgreSQL

`$psql -U USERNAME event < dbexport.pgsql`

`$npm start`

Clone the Rick branch to run the login on port 3001

Configure mongodb and run

`$npm start`, and the server runs on localhost:3001. THe server running on localhost:3000 will send a GET request to server on localhost:3000

To run the attendee web app

Clone the atendee-app-web branch

`$npm install`

`$npm start` to run on port 3000. The attendee app runs on localhost:3000

___


### HOME PAGE

This page has two separate paths for : 
1) for the Event Organiser
2) for the Presenter.
This will open on the master branch. (localhost:3000/)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-13%20Home%20Page.png)

### LOGIN

Logging into the app
This will run on the branch - “Rick” (localhost:3001/users/login)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20Login%20User.png)

### REGISTER

Registering into the app
This will run on the branch - “Rick” (localhost:3001/users/register)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20Register.png)

### CREATE EVENT

This will open on the master branch (localhost:3000/createEvent)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20Create%20Event.png)

### DASHBOARD 1

This is the dashboard for the event organiser to create/update/view events.
This will run on the branch master (localhost:3000/organiserDashboard)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20Organiser.png)

### DASHBOARD 2

This is another (optional) dashboard for the event organiser to create/update/view events.
This will run on the branch master (localhost:3000/dashboard)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20dashboard.png)

### ATTENDEE

Login and register for the attendee.
This will work on the branch - “atendee-app-web” (localhost:3000)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20Attendee%20App.png)

### EVENTS LIST

This shows all the events that are created by the organiser.
This will work on the branch - “atendee-app-web” (localhost:3000/events)
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20Events.png)

### EVENT MODAL 

It shows all the details of the event clicked in the table. 
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot-2018-1-14%20EventsModal.png)


### AFTER ORGANISER LOGGEDIN

It shows the login page
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot%20(2).png)

### AFTER LOGOUT

It shows the login page
![alt text](https://github.com/chhavi02/Hackshetra/blob/master/screenshots/Screenshot%20(3).png)
