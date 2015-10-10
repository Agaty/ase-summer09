<font size='7' face='Times'>
<p align='center'>Component/Object Specification Document</p>
</font>

<font size='6' face='Times'>
<p align='center'>Team ADS Summer 09</p>
</font>

<p align='center'>
Akhil Chopra<br />
Chad Gabrysch<br />
Katie Roberts Hoffman<br />
Rajeev Sharma<br />
Ryan Kelly<br />
</p>

<br />

Project website: [http://code.google.com/p/ase-summer09](http://code.google.com/p/ase-summer09)

Wiki website: http://code.google.com/p/ase-summer09/w/list

<br />

# Version #

| **Version** | **Date** | **Author** | **Comments** |
|:------------|:---------|:-----------|:-------------|
| 0.1         | 6/11/09  | Ryan       | Initial draft |
| 0.2         | 6/25/09  | Chad       | Formatting   |
| 0.3         | 6/26/09  | Katie      | Added section 1 |
| 0.4         | 6/26/09  | Chad       | Updated section 2 |
| 0.5         | 6/26/09  | Chad       | Updated section 3 |
| 0.6         | 6/26/09  | Katie      | Updated section 2,3 |
| 0.7         | 6/27/09  | Ryan       | Some clarification |

<br />
<br />

# Component/Object Specification Document #

**Table of Contents**



The Component/Object Specification Document describes the trade-offs made by developers, interface and coding guidelines, and subsystem/class interface definitions. These guidelines and definitions assist the developers who implement the various subsystems. It also serves as a reference for test engineers.

## 1 Introduction ##

> ### _1.1 Object Design Trade offs_ ###

Software architects must weigh a variety of benefits and costs when designing a software system. Below we outline some of the considerations and choices made in the design of the ambulance dispatch system (ADS). See the Phase 3 System Design Document for a complete list of project design goals.

  1. Delivery time vs. Functionality: Functionality is the highest design goal as stated in the System Design Document. This logically follows since a failure of the ADS could cause a loss of human life. Our clients originally commissioned this project to become more efficient to reduce costs thus prefer timely deliverables, however, they place a higher importance on functionality thus may tolerate delays in the schedule.
  1. Security vs. Usability: Our clients have already implemented a secure login system throughout their computer network in addition to restricting physical access to the rooms where their computers are located, thus a lower importance is placed on security. Since time is often critical in the ambulance dispatch process, our clients do not want to restrict usability to increase security. Thus only non-intrusive security shall be added to this system.
  1. Speed vs. Cost: Since the ADS must remain highly responsive due to its purpose, the client has agreed to invest in adequate client and server computers. As discussed in prior documents, we are then able to assume that there are no memory or bandwidth contraints on the system.
  1. Files vs. Database: Our system shall use a database to record events in the system. This was primarily chosen to allow multiple user access as call takers, ambulance dispatchers, and ambulance administrators may need concurrent access as noted in the Phase 2 Requirements Elicitation Document.
  1. In-house design vs purchasing off-the-shelf solutions: Our clients have opted for in-house design of the software system to retain greater control of the system's functionality and to increase documentation and flexibility for future in-house projects.

> ### _1.2 Interface documentation guidelines_ ###

We shall follow all of the standard Ruby on Rails practices for the naming of objects methods and attributes. A more complete listing of these guidelines can be found
http://itsignals.cascadia.com.au/?p=7.

Below is a summary of these conventions:

  * Variables
    * Local variables shall begin with a lower case letter
    * Instance variables shall begin with a single '@' character
    * Class variables shall begin with two '@' characters
    * Global variables shall begin with a single '$' character
    * Constants shall be given in all upper case characters
  * Methods and Classes
    * Instance methods shall begin with a lower case letter
    * Classes shall begin with an upper case letter
    * Classes shall be associated with files by name, for example: Class "Order" in the model has corresponding file "app/models/order.rb"
  * Files, Directories and Tables
    * Files, directories and database tables shall begin with a lower case letter

## 2 Packages ##

This section of the Components/Object Specification document outlines the decomposition of subsystems into packages and the file organization of the code. As previously discussed in the Phase 3 System Design Document, an MVC architecture was chosen.
ge. Below is a simple package diagram showing the subsystems of the model, view, and controller.

![http://ase-summer09.googlecode.com/files/package2.png](http://ase-summer09.googlecode.com/files/package2.png)

Using the coding guidelines above, these subsystems are naturally mapped into the following code layout:
  * app/
    * models/
      * ambulance.rb
      * incident.rb
      * availability.rb
    * views/
      * ambulances/
      * incidents/
      * home/
    * controllers
      * ambulances\_controller.rb
      * incidents\_controller.rb
      * home\_controller.rb

Adding further to the subsystem decomposition from Phase 3:

  * Model
    * The model layer corresponds to persistent storing of incident and ambulance data. It is contained in the models package, which uses a MySQL database. This subsystem is responsible for creating, retrieving, updating and deleting records from the database.  Updating the database is accomplished by updating the corresponding Ruby object, as Ruby supports this feature by default.
  * View
    * The view layer corresponds to the graphical user interface layer. This layer consists of subsystems responsible for interacting with the various users of the system. The view layer consists of the following subsystems, with provided services also listed.
      * The Call taker UI subsystem: The call taker UI subsystem handles the screens that the call taker uses. It provides the following services to the call taker:
        * Create Incidents
      * The Dispatcher UI subsystem: The dispatcher UI subsystem handles the screens that the dispatcher uses. It provides the following services to the dispatcher:
        * View assigned and unassigned incidents
        * View list of ambulances
        * Recall ambulance
        * Review and update incident
      * The Ambulance Admin UI subsystem: The ambulance administrator UI subsystem handles the screens that the ambulance administrator uses. It provides the following services to the ambulance administrator:
        * View list of ambulances
        * Add new ambulance
        * Update the status of ambulance
      * The Home UI subsystem: The home UI subsystem shows the available views to the user. This allows a single person (with the correct permissions) to access both the ambulance administrator interface as well as the call taker UI.
    * The Controller layer: The controller layer consists of the main controlling subsystems. There are three subsystems corresponding to each of the three subsystems in the UI layer. Additionally, there is one master controller subsystem, referred to as the ADS controller, that receives data from the above three subsystems and passes it onto the model layer to be stored in the persistent database system. The subsystems in the controller layer are as follows:
      * Call Taker controller: The call taker controller subsystem is responsible for receiving data from the call taker UI subsystem and processing it and passing it onto the ADS controller for further processing or saving in the database.
      * Dispatcher controller: The dispatcher controller subsystem is responsible for receiving data from the dispatcher subsystem and processing it and passing it onto the ADS controller for further processing or saving in the database.
      * Ambulance Admin controller: The ambulance admin controller subsystem is responsible for receiving data from the ambulance admin UI subsystem, processing it and passing it onto the ADS controller for further processing or saving in the database.
      * ADS controller: The ADS controller is the main controlling subsystem that is responsible for regulating the permissions for the different UI.

## 3 Class interfaces Glossary ##

This section provides an overview for each class as well as defining its public interface and public attributes.

The class diagram from the Requirements Analysis Document has been further refined to eliminate unnecessary information and to follow the coding conventions outlined above.

> ### _3.1 Class Diagram_ ###

![http://ase-summer09.googlecode.com/files/class2.png](http://ase-summer09.googlecode.com/files/class2.png)

> ### _3.2 Class Overviews_ ###

> #### _3.2.1 User_ ####

This class provides information on individual users in the system, and this information is used by the system to determine access rights and available roles.

> ##### _3.2.1.1 User Public Interface_ #####
  * create - adds a user to the system
  * remove - removes a user from the system
  * update - allows the name or ID of the user to be modified
  * get - allows the retrieval of the user attributes

> ##### _3.2.1.2 User Public Attributes_ #####
  * name
  * id

> #### _3.2.2 Role_ ####

This class is an enumeration of all roles that are available in the system, and this information is used as a basis for access rights to the three views.

> ##### _3.2.2.1 Role Public Interface_ #####

> ##### _3.2.2.2 Role Public Attributes_ #####
  * role - an enum for the allows roles within the system, such as ambulance administrator

> #### _3.2.3 Incident_ ####

This class represents all relevant information and methods for an individual emergency incident in the system.

> ##### _3.2.3.1 Incident Public Interface_ #####
  * index - provide data on all incidents for the index view
  * show - provide complete data on one incident for the show view

  * new - retrieve a new instance for the new view
  * create - create an incident with the provided attributes

  * edit - retrieve the current data for showing the update view
  * update - complete an update with the provided attributes

  * close - set the status on the incident to closed

  * dispatch - retrieve the available ambulance data for the dispatch view
  * undispatch - disassociate the provided ambulance from the incident.

> ##### _3.2.3.2 Incident Public Attributes_ #####
  * Closed - this has two valid values: "Open" or "Closed". Once an incident has been serviced, it remains in a closed state. This keeps the record in the database but does not appear to the ambulance dispatcher.
  * Location - a string address
  * Severity - an integer between 1 and 5 indicating the severity of the patient's condition. This attribute is discussed in further detail in the Requirements Analysis.
  * Number of patients - an integer indicating the number of patients associated with this incident.
  * Notes - a string for additional incident information, patient information and contact information.

> #### _3.2.4 Ambulance_ ####

This class represents the necessary information about ambulances that the system uses for incident assignment.

> ##### _3.2.4.1 Ambulance Public Interface_ #####
  * index - provide data on all ambulances for the index view
  * show - provide complete data on one ambulance for the show view

  * new - retrieve a new instance for the new view
  * create - create an ambulance with the provided attributes

  * edit - retrieve the current data for showing the update view
  * update - complete an update with the provided attributes

  * destroy - delete an ambulance from the system


> ##### _3.2.4.2 Ambulance Public Attributes_ #####
  * Availability - this is essentially an enum for "Available", "Unavailable--temporary", and "Unavailable--permanent"
  * Location - Current known address of this ambulance
  * Driver\_name - Current record of driver associated with this ambulance