# TranExec

### Description
---
The client company for this project delivers Executive Coaching; mentoring Store Managers, Area Managers and above. After completing a face-to-face workshop (with approximately 18 people) each participant is then scheduled a one-on-one phone coaching session. This is currently done by passing around a piece of paper and then manually recording the appointments electronically.

The aim of this project is to streamline the appointment booking procedure. This was achieved by allowing the organisers to setup the event in the months prior to the workshop, and then allowing the participants to book appointments digitally in real-time. These bookings can then be exported from the system as an iCal file and imported into the users calendar program of choice

This project has been an initial demonstration for the client to show what can be achieved. There is great potential for this project to be extended to include a complete management system; facilitating the ability to track participants through sessions and report on actions needing attention.

### Installation
---
Download the files and unzip

Run bundle to install the required gems

Run rake db:create db:migrate db:seed to create the database (postgresql)

### Instructions
---
Either install locally or visit https://infinite-wildwood-1074.herokuapp.com/

To access the the admin pages, go to <root>/admin. Use username "Rich" for the demo system

From the menu system the admins can create new projects and training sessions

Admins can also create "blocks" of appointments for users to select from when booking phone sessions

From the home page, session participants can access the booking system with the set code.

### Tech Used
---
- Ruby on Rails
- Postgresql
- Backbone
- jQuery
- Underscore.js
- Bootstrap

### Approach
---
A Rails backend was used to create the admin system using a series of shallow nested URLs. A variety of user interface options were implemented in order to demonstrate possilble solutions to the client. The interations can then be tailored following client confirmation of the most appropriate designs.

A backbone user interface was used for the booking system so that the information presented to the user can be updated in real-time. The limited number of participants using the system simultaneously, and the situation of use does afford the system some leeway but we felt this would provide the user witht he best experience.


### Further Work
---
- Confirm admin/user processes with the client
- Make adjustments to the process flow as necessary
- Record the creation of events to ensure all setup actions are carried out
- Track the status of the participants in the system, with reports
- Email admins with a daily/weekly update of the system status


