Akhil Chopra<br>
Chad Gabrysch<br>
Katie Roberts Hoffman<br>
Rajeev Sharma<br>
Ryan Kelly<br>

Project website: <a href='http://code.google.com/p/ase-summer09'>http://code.google.com/p/ase-summer09</a>

Wiki website: <a href='http://code.google.com/p/ase-summer09/w/list'>http://code.google.com/p/ase-summer09/w/list</a>

<b>Table of Contents</b>

<br>
<br>
<br>
<h3>Version</h3>
<table><thead><th> <b>Version</b> </th><th> <b>Date</b> </th><th> <b>Author</b> </th><th> <b>Comments</b> </th></thead><tbody>
<tr><td> 0.1            </td><td> 6/6/09      </td><td> Katie         </td><td> Initial draft   </td></tr>
<tr><td> 0.2            </td><td> 6/27/09     </td><td> Ryan, Chad, Katie </td><td> Drafted Section 3 in Team Meeting on 6/27 </td></tr>
<tr><td> 0.3            </td><td> 7/5/09      </td><td> Akhil         </td><td> Subsystem and deployment diagrams </td></tr>
<tr><td> 0.4            </td><td> 7/5/09      </td><td> Rajeev        </td><td> Added to 3.2-3.4 </td></tr>
<tr><td> 0.5            </td><td> 7/5/09      </td><td> Akhil         </td><td> Reformatted Section 2 </td></tr>
<tr><td> 0.6            </td><td> 7/5/09      </td><td> Katie         </td><td> Edited document for consistancy and clarity </td></tr>
<tr><td> 0.7            </td><td> 7/6/09      </td><td> Katie         </td><td> Added 3.5-3.7, 4, Edited 3.1-3.4  </td></tr>
<tr><td> 0.8            </td><td> 7/6/09      </td><td> Chad          </td><td> Proofread/Edited </td></tr>
<tr><td> 0.9            </td><td> 7/25/09     </td><td> Chad          </td><td> Added Access Control Matrix </td></tr></tbody></table>

<h1>System Design Document</h1>

<h2>1. Introduction</h2>
<blockquote><h3><i>1.1 Purpose of the system</i></h3>
The Ambulance Dispatch System (ADS) under consideration will facilitate the orderly and timely direction of ambulances throughout a metropolitan area to minimize the loss of human life. Further information regarding this project's requirements and scope can be found at the project's website: <a href='http://code.google.com/p/ase-summer09'>http://code.google.com/p/ase-summer09</a>.</blockquote>

<blockquote><h3><i>1.2 Design goals</i></h3>
As in many software projects, a primary design goal is to maximize cohesion and reduce coupling. This philosophy can be examined in further detail in Bruegge's book Object-Oriented Software Engineering: Using UML, Patterns and Java.</blockquote>

This ADS project is divided into sub-systems using the MVC architecture style. This special case of repository architecture uses ideas from the MVC (Model, View, Controller) and cloud layered architecture styles. The following design goals can be directly traced to the non-functional requirements (see the ADS project website for details) where emphasis was placed on modularity, robustness and fault tolerance.<br>
<br>
Below we outline a number of design goals that will be explicitly addressed in our ADS, with the design goals listed first receiving higher priority:<br>
<br>
<ul><li>Functionality (See the Requirements Analysis Document for further functional requirements)<br>
</li><li>Increased Productivity (over the existing, non-software based system)<br>
</li><li>Minimum Errors<br>
</li><li>Fault Tolerant<br>
</li><li>Good Documentation<br>
</li><li>Security<br>
</li><li>Flexibility<br>
</li><li>Low Cost<br>
</li><li>User Friendliness<br>
</li><li>Modifiability<br>
</li><li>Traceability of Requirements</li></ul>

<blockquote><h3><i>1.3 References</i></h3></blockquote>

<ul><li><a href='http://code.google.com/p/ase-summer09/wiki/Phase_02'>Phase 2: Requirements Analysis</a>
</li><li><a href='http://wwwbruegge.in.tum.de/OOSE/'>Bruegge's website on Object Oriented Software Engineering</a>
</li><li><a href='http://utdallas.edu/~chung/CS6354/'>Dr. Chung's CS 6354 Class Notes</a></li></ul>

<blockquote><h3><i>1.4 Overview</i></h3></blockquote>

The architecture of a system is defined as the structure of the system's components. In this document, the Architecture Specification, we provide details on subsystem decomposition, hardware/software mapping, data management, and security. We spend significant effort on the subsystem decomposition since this abstraction reduces complexity and in turn supports re-use, testing, and parallel development.<br>
<br>
This document is intended for both project managers as well as the implementers of each individual subsystem.<br>
<br>
<h2>2. Current software architecture</h2>

The current system has no prevalent architecture since it was not a software-based dispatch system. Since the intended client may not be familiar with common software architectures, we outline them below for clarity. These outlines are based on notes of Dr. Chung that are available at <a href='http://utdallas.edu/~chung/CS6354/'>http://utdallas.edu/~chung/CS6354/</a>.<br>
<br>
<blockquote><h3><i>2.1 Client-Server Architecture</i></h3></blockquote>

The client-server architecture consists of one or many servers which provide services to instances of subsystems, called clients. The client requests a service to the server, which in turn invokes the service and returns the result back to the client.<br>
<br>
The client requires knowledge about the available server services and corresponding server interface. The server on the other hand, requires no knowledge about the client's interface. Users typically interact only with the client.<br>
<br>
<blockquote><h3><i>2.2 Layered Architecture</i></h3></blockquote>

The layered architecture involves the horizontal layering of the system with each layer providing a set of services. Each layer is commonly referred to as a Virtual Machine. There are two types of layered architecture systems as outlined below:<br>
<br>
Closed Layer: Any layer can only invoke operations from the immediate layer below. This architecture achieves the design goals of high maintainability and flexibility because changes to a single layer do not spread across other layers. This also enables the closed architecture to have high fault tolerance and portability. On the other hand the closed layer architecture becomes complex with increasing size. In general, closed architectures are also less efficient at runtime than open layered systems.<br>
<br>
Open Layer: In this architecture, any layer can invoke operations from any layer beneath it. It achieves the design goal of high runtime efficiency. While this style is not fault tolerant, it is easy to understand.<br>
<br>
<blockquote><h3><i>2.3 Peer-to-Peer Architecture</i></h3></blockquote>

Peer-to-peer (P2P) networking is a method of delivering computer services amongst a set of participants. Each participant shares a portion of their own resources, such as processing power, disk storage, network bandwidth, printing facilities. These resources are provided directly to other participants without intermediary network hosts or servers. Thus P2P network participants are both providers and consumers of services simultaneously in contrast with other service models.<br>
<br>
<blockquote><h3><i>2.4 Repository Architecture</i></h3></blockquote>

The repository architecture is composed of three sub-systems:<br>
<br>
Knowledge source: It is responsible for the application domain knowledge.<br>
<br>
Controller: It is responsible for controlling the sequence of actions following interactions between the user or changes in the model.<br>
<br>
Blackboard: It is responsible for displaying the domain objects requested by the user.<br>
<br>
Model-View-Controller (MVC) is a special case of a repository architecture where a knowledge source subsystem implements the central data structure and the controller subsystem explicitly dictates the control flow. Thus there is two-way communication which differs from the traditional repository architecture which has only one way communication. The control flow is dictated by the central knowledge source.<br>
<br>
The subsystems access and modify data from a single data structure. Thus this achieves the initial design goal of reducing coupling.<br>
<br>
An example of repository architecture is Microsoft Speech Recognition system.<br>
<br>
<blockquote><h3><i>2.5 Middleware Architecture</i></h3></blockquote>

The middleware architecture involves the interaction amongst subsystems, but not in a layered approach. This architecture requires translation services to allow subsystems to communicate with one another. Subsystems can be written in different languages or be running on separate hardware. Subsystems do not communicate directly with each-other but instead do so via the middleware.<br>
<br>
<blockquote><h3><i>2.6 Other Architectures</i></h3></blockquote>

While not explored in detail, other popular architecture styles include:<br>
<ul><li>Pipes and Filter<br>
</li><li>Data Abstraction and Object oriented architecture<br>
</li><li>Event Based Implicit Invocation</li></ul>

<h2>3. Proposed software architecture</h2>

Following the brief summary of existing software architectures above, we now outline the ADS design model.<br>
<br>
<blockquote><h3><i>3.1 Overview</i></h3></blockquote>

The ADS will use a client-server model with an MVC architecture to maximize achievement of the design goals set forth in Section 1. MVC allows the system to achieve the goals of high fault tolerance, flexibility, modifiability, low cost, and usability.<br>
<br>
Our highest priority design goals (Functionality, increased productivity, minimum errors, and good documentation) are not strongly influenced by the architecture, thus we focus on the next-highest priority design goals.<br>
<br>
The client-server model works particularly well for systems requiring high fault tolerance since the architecture supports backup servers, to be located at various locations. (The client operations are independent from the actual server hardware) Client-server architecture supports the seamless connection between many clients and with an arbitrary number of servers.<br>
<br>
The client-server model over the web also has a number of off-the-shelf security options including database security and secure internet connections based on encryption.<br>
<br>
MVC is a well defined design that allows for easy modifications as long as the predefined interfaces remain the same.  Thus MVC naturally meets the design goals of flexibility and modifiability.<br>
<br>
Basing the architecture on a well defined starting point will also help meet the low cost design goal by maximizing reuse of common software design strategies associated with MDC.<br>
<br>
One possible drawback of a centralized design may be that bottlenecks occur during model access, however, with careful design, the servers shall be equipped with adequate hardware to handle all requests quickly.<br>
<br>
Finally, the client-server and MVC models support client-side GUIs and server-side databases. The clients can support appealing GUIs which increases the usability of the system (thus meeting the user friendliness design goal)<br>
<br>
A high level summary of the ADS MVC model is as follows:<br>
<ul><li>The view runs on the client and is displayed in a web browser.<br>
</li><li>The view makes control requests to the Controller via the provided interface.<br>
</li><li>The controller then gets and sets attributes of the model which is the third layer.<br>
</li><li>The model is an active record running off of an SQL database.</li></ul>

<blockquote><h3><i>3.2 Subsystem decomposition</i></h3>
<img src='http://ase-summer09.googlecode.com/files/component.png' /></blockquote>

<ul><li>The ADS system uses the MVC model which is a layered architecture system. The system is decomposed into the three layers previously discussed:<br>
<ul><li>The Model layer<br>
</li><li>The View layer<br>
</li><li>The Controller layer</li></ul></li></ul>

The ADS uses a closed form of layered architecture, which thus renders the system more maintainable and flexible for changes. Each of the three layers have subsystems in the form of components that interact with each other to perform their respective tasks. Since each subsystem is single-minded and only performs its designated tasks, it is highly cohesive and thus this also reduces coupling which therefore satisfies the principle software design goal.<br>
<br>
Each of the layers is now discussed in further detail:<br>
<br>
<ul><li><b>The Model layer</b>: The model layer corresponds to persistent storing of incident and ambulance data. It consists of the ADS Database subsystem. We are using MySQL database to implement the ADS database subsystem. This subsystem is responsible for creating, retrieving, updating and deleting records from the database.<br>
</li><li><b>The View layer</b>: The view layer corresponds to the graphical user interface layer. This layer consists of subsystems responsible for interacting with the various users of the system. The view layer consists of the following subsystems. We also list the services provided by each of these subsystems.<br>
<ul><li>The Call taker UI subsystem: The call taker UI subsystem handles the screens that the call taker uses. It provides the following services to the call taker:<br>
<ul><li>Create Incidents<br>
</li></ul></li><li>The Dispatcher UI subsystem: The dispatcher UI subsystem handles the screens that the dispatcher uses. It provides the following services to the dispatcher:<br>
<ul><li>View assigned and unassigned incidents<br>
</li><li>View list of ambulances<br>
</li><li>Recall ambulance<br>
</li><li>Review and update incident<br>
</li></ul></li><li>The Ambulance Admin UI subsystem: The ambulance administrator UI subsystem handles the screens that the ambulance administrator uses. It provides the following services to the ambulance administrator:<br>
<ul><li>View list of ambulances<br>
</li><li>Add new ambulance<br>
</li><li>Update the status of ambulance<br>
</li></ul></li></ul></li><li><b>The Controller layer</b>: The controller layer consists of the main controlling subsystems. There are three subsystems one corresponding to each of the three subsystems in the UI layer. And there is one master controller subsystem that receives data from the above three subsystems and passes it onto the model layer to be stored in the persistent database system. The subsystems in the controller layer are as follows:<br>
<ul><li>Call Taker controller: The call taker controller subsystem is responsible for receiving data from the call taker UI subsystem and processing it and passing it onto the ADS controller for further processing or saving in the database.<br>
</li><li>Dispatcher controller: The dispatcher controller subsystem is responsible for receiving data from the dispatcher subsystem and processing it and passing it onto the ADS controller for further processing or saving in the database.<br>
</li><li>Ambulance Admin controller: The ambulance admin controller subsystem is responsible for receiving data from the ambulance admin UI subsystem, processing it and passing it onto the ADS controller for further processing or saving in the database.<br>
</li><li>ADS controller: The ADS controller is the main controlling subsystem that is responsible for receiving data from the call taker, dispatcher and ambulance admin controller subsystems, processing it and passing it onto the ADS database subsystem to be stored. This subsystem is also responsible for receiving requests for data from the other controller subsystems and then fetching it from the model layer and passing it onto the requesting controller subsystem.</li></ul></li></ul>

<blockquote><h3><i>3.3 Hardware/software mapping</i></h3></blockquote>

The client only requires a basic computer running a web browser with a connection to the server.<br>
<br>
The server requires access to the ADS database and sufficient computing power to handle the load of users expected.<br>
<br>
<img src='http://ase-summer09.googlecode.com/files/deployment.png' />

<b>Client</b>: The client systems access the ADS software system using a web browser. Since the software is web-based, the rendered pages will be in HTML. So any web browser like Internet Explorer or Mozilla Firefox shall function as the client.<br>
<br>
The ambulance GPS system is also a client.  The ambulances have some of the latest and most advanced GPS systems running their own software, updating the location, giving directions and traffic indications.  Alternatively, the ambulance positions can be updated manually in case of GPS failure via the web client.<br>
<br>
<b>Web Server</b>: The ADS system uses a web server, which runs the UI and controller subsystems of the call taker, dispatcher and ambulance administrator. The web server communicates with the client and the database server.<br>
<br>
<b>Database Server</b>: The ADS system uses a database to implement the ADS database subsystem. The database used for this purpose is MySQL.<br>
<br>
<blockquote><h3><i>3.4 Persistent data management</i></h3>
Here we describe the database schema of the various tables used by our ADS system. The database management system that we are going to use is MySQL 5.0. The tables that we are going to implement are as follows and directly correspond to the Object Model diagrams in the Requirements Analysis document:</blockquote>

<ul><li>The Incident relation has the following attributes: Incident ID, number of people affected, severity, location, date and time of incident, age and sex of patient, type of problem, and other details.<br>
</li><li>The Caller relation has the following attributes: Caller ID, name, relation to patient, location, and phone.<br>
</li><li>The Patient relation has the following attributes: Patient ID, name , address, phone, insurance provider, allergies, previous health history, family doctor, emergency contact information.<br>
</li><li>The Ambulance relation has the following attributes: Ambulance ID, registration number, designated driver, emergency facilities available, current location, availability.<br>
</li><li>The Hospital relation has the following attributes: Hospital ID, name, address, phone, facilities available, number of doctors, number of nurses, and number of wards currently available.<br>
</li><li>The User relation has the following attributes: User ID, password, role, supervisor, contact address, and phone.</li></ul>

<blockquote><h3><i>3.5 Access control and security</i></h3>
In this system we have a number of actors (such as Ambulance Dispatchers, Ambulance Administrators, and Ambulance Drivers), each with specific, and sometimes exclusive roles. For more details on these roles, see the Requirements Analysis document.</blockquote>

We have assumed that each user must successfully log into a computer to gain access to starting any client program. Each client program shall only expose the appropriate view to the user. Thus a person tasked with both Ambulance Dispatch and Ambulance Administrator duties shall have two clients accessible on their computer; one Ambulance Dispatch View and another Ambulance Administrator view. Each client only shows permitted activities in their respective GUIs thus limiting the access to the model. Additional security may also be implemented to insure that clients cannot be modified to gain undesired access to the model.<br>
<br>
Access Control Matrix:<br>
<br>
The ambulance control matrix defines access rights of the three primary system actors to the incident and ambulance lists.  The actions available are Create (C), Read (R), Update (U) and Delete (D).<br>
<br>
<table><thead><th> <b>Actor</b> </th><th> <b>Incident</b> </th><th> <b>Ambulance</b> </th></thead><tbody>
<tr><td> Call Taker   </td><td> C R U           </td><td> --               </td></tr>
<tr><td> Dispatcher   </td><td> R U D           </td><td> R U              </td></tr>
<tr><td> Administrator </td><td> C R U D         </td><td> C R U D          </td></tr></tbody></table>

<blockquote><h3><i>3.6 Global software control</i></h3></blockquote>

The MVC architecture is an event-driven centrally controlled software system. The system controller handles all requests. System users use the view to make requests and are provided with responses.  The view communicates through the controller to the model.  The model provides an interface to get and set attributes. Further details on MVC software control can be found in Bruegge's Object Oriented Software Engineering textbook.<br>
<br>
<blockquote><h3><i>3.7 Boundary conditions</i></h3></blockquote>

We consider three boundary condition scenarios. Complete use cases are not provided as the scenarios are not complex.<br>
<br>
<ul><li>Initialization: The server must be started prior to the connection of any clients. This shall be done by the Ambulance Administrator who shall then select to use data currently stored in the system database (i.e. present locations of the ambulances, unhandled incidents, etc.) or create a new system database (which would result in an empty database). Following the latter initialization, the Ambulance Administrator would then be required to add ambulances to the system.<br>
</li><li>Termination: If a client disconnects, either intentionally (i.e. by logging out of the system) or unintentionally (i.e. unresponsive computer), this shall have no effect to the server. If the server shuts down, then each of the clients requests shall time out and an error shall be reported in the client's GUI.<br>
</li><li>Failure: Failure of either the server or clients shall be treated the same as in the termination scenario.</li></ul>

<h2>4. Subsystem services</h2>

This section is intended to describe the services provided by each subsystem. This will be addressed in detail in the Component/Object Specification document to be released by the end of July. Until this time, we initially provide the following references:<br>
<br>
<ul><li>View: The view (GUI) directly interacts with the end user (i.e. Ambulance Dispatchers, Ambulance Administrators, and Ambulance Drivers). We have provided Navigational Path diagrams and screen mock-ups in the Requirements Analysis document which allude to the services provided by each view.<br>
</li><li>Controller: The controller provides a control interface to the view where user commands are converted to requests to which the controller responds.<br>
</li><li>Model: The interface provided by the model allows the retrieving and setting of attributes within the model. The functions associated with each object can be found within the Object Model in the Requirements Analysis document. This will lead to the development of an interface to be provided by the controller which would allow user requests to be handled. This interface shall be developed fully in the Component/Object Specification document.</li></ul>

<h2>5. Glossary</h2>

<ul><li>ADS: Ambulance Dispatch System (the system being designed)<br>
</li><li>GPS: Global Positioning System (to be used by ambulance drivers)<br>
</li><li>MVC: Model View Controller Architecture<br>
</li><li>GUI: Graphical User Interface