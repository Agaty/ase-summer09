<font size='7' face='Times'>
<p align='center'>Software Specification and  Analysis Document</p>
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
<br />

Project website: [http://code.google.com/p/ase-summer09](http://code.google.com/p/ase-summer09)

Wiki website: http://code.google.com/p/ase-summer09/w/list

<br />
<br />

**Table of Contents**



### Version ###
| **Version** | **Date** | **Author** | **Comments** |
|:------------|:---------|:-----------|:-------------|
| 0.1         | 6/6/09   | Katie      | Initial draft |
| 0.2         | 6/6/09   | Ryan       | Added scenarios |
| 0.3         | 6/7/09   | Akhil & Rajeev | Added Non Functional Requirements |
| 0.4         | 6/7/09   | Akhil & Rajeev | Added Assumptions & Dependencies |
| 0.5         | 6/7/09   | Akhil & Rajeev | Uploaded SIG and Process Specification for review|
| 0.6         | 6/9/09   | Akhil & Rajeev | Added Functional Requirements,Updated Section 1.7|
| 0.7         | 6/12/09  | Katie      | Added Introduction and Current System Info |
| 0.8         | 6/13/09  | Chad       | Added Additional Nonfunctional Requirements and Usability |
| 0.9         | 6/13/09  | Ryan       | Added use-case diagrams and templates |
| 0.10        | 6/15/09  | Katie      | General editing |
| 0.11        | 6/18/09  | Katie      | Added class diagram notes |
| 0.12        | 6/20/09  | Rajeev     | Made corrections to the requirements section |
| 0.13        | 6/20/09  | Ryan       | Made corrections to scenarios |
| 0.14        | 6/22/09  | Katie      | Added object, seq and use case diagrams |
| 0.15        | 6/23/09  | Chad       | Added navigation path and mock up diagrams |
| 0.16        | 6/23/09  | Chad       | Formatted as per TA requests |


### 1 Introduction ###
> #### _1.1 Purpose of the system_ ####

This ambulance dispatch system (ADS) is designed to facilitate the orderly and timely direction of ambulances throughout a metropolitan area to minimize the loss of human life. Unfortunately there have been several reported failures of similar ambulance dispatch systems resulting in casualties (see Section 1.5 - References for more information).

> #### _1.2 Scope of the system_ ####

This system will accept input from an emergency call taker, such as those on the receiving end of a 911 call amongst others. It will provide information to the ambulance dispatcher so that s/he can best inform the ambulance drivers of their next destination. In addition, the dispatcher will be able to continuously monitor the ambulance's progress to the hospital and update the ambulance driver's destination if needed.

> #### _1.3 Objectives and success criteria of the project_ ####

The primary objective of this system is to provide ambulance drivers the requisite information such that the maximum number of human lives can be saved. An outline of said information is discussed in detail throughout this document.

This project will be deemed successful if it meets the requirements as set forth in this document. Included in these requirements are commitments to ensure that the output from the system reduces the number of casualties.

> #### _1.4 Definitions, acronyms, and abbreviations_ ####

  * ADS - Ambulance Dispatch System, the name of this software system.

  * CRUD - Create, Read, Update, Delete.  Used for use cases involving the manipulation of a particular set of data.

> For example, the set of CRUD operations related to Ambulances would be:
  1. **C** reating an ambulance<br>
<ol><li><b>R</b> etrieving data about a particular ambulance<br>
</li><li><b>U</b> pdating data about a particular ambulance<br>
</li><li><b>D</b> eleting an ambulance.</li></ol>

<ul><li>ECT - Emergency Call Taker, receives information from 911 callers.</li></ul>

<ul><li>GPS - Global Positioning System, provides vehicle operators with the most efficient directions to reach a specific address using up-to-date traffic information.</li></ul>

<ul><li>RAD - Requirements Analysis Document (this document)</li></ul>

<ul><li>Dispatcher - A person who receives the information entered by the call taker and assigns resources to the case through the ADS.</li></ul>

<ul><li>Ambulance Administrator - A person who adds or removes the number of available ambulances.</li></ul>

<blockquote><h4><i>1.5 References</i></h4></blockquote>

<ul><li>Ambulance Dispatch System Articles provided by Dr. Lawrence Chung - <a href='http://utdallas.edu/~chung/CS6354/'>http://utdallas.edu/~chung/CS6354/</a>
</li><li>Ambulance Dispatch System Project Definition provided by Dr. Lawrence Chung - <a href='http://utdallas.edu/~chung/CS6354/Project.doc'>http://utdallas.edu/~chung/CS6354/Project.doc</a></li></ul>

<blockquote><h4><i>1.6 Overview</i></h4></blockquote>

The problem statement has been provided by Dr. Lawrence Chung and is available at <a href='http://utdallas.edu/~chung/CS6354/Project.doc'>http://utdallas.edu/~chung/CS6354/Project.doc</a>. Additional references have been provided that show examples of known failures of existing systems.<br>
<br>
The project has been separated into distinct phases for development. Below is the general process specification as well as specific Phase 1 and Phase 2 specification. Further phases can be found on this project's website.<br>
<img src='http://ase-summer09.googlecode.com/files/IDEF0.jpg' />
<img src='http://ase-summer09.googlecode.com/files/IDEF0.1.jpg' />

<blockquote><h4><i>1.7 Assumptions and Dependencies</i></h4></blockquote>

<ol><li>Dispatcher<br>
<ol><li>Assume the dispatcher has clearly defined guidelines for how to enter information into the ADS.<br>
</li><li>Assume the dispatcher has been sufficiently trained to use the ADS correctly.<br>
</li><li>Assume the dispatcher has the ability to detect duplicate incidents. However if in doubt the dispatcher shall leave the incidents as it is.<br>
</li><li>In cases where the same caller is calling after intervals of time to check whether the ambulance is dispatched or not then there is some problem and in those cases the call is routed to the supervisor.<br>
</li></ol></li><li>Emergency Call Taker<br>
<ol><li>Assume the ECT has obtained as much information about the location and condition of the patient from the caller as possible.<br>
</li><li>Assume the ECT has correctly entered this information into the ADS.<br>
</li><li>Assume the ECT has been trained with assignment of severities to the case incidents according to the pre defined rules set by American Medical Association and Federal Drug Agency.<br>
</li><li>Assume the ECT assigns a severity level to each incident in a scale of 1 to 5, where 5 implies highest level of emergency for cases such as being shot in the chest and 1 being the lowest level of severity for cases such as a sprain in the ankle.<br>
</li></ol></li><li>Ambulance<br>
<ol><li>Assume that each ambulance is equipped with a state-of-the-art GPS system which provides directions to a specific address.<br>
</li><li>Assume the GPS system includes traffic conditions in the calculation of routes.<br>
</li><li>Assume ambulance drivers are knowledgeable of the roads throughout the city and can navigate via maps (located on each ambulance) in the case of GPS failure.<br>
</li><li>Assume that the ambulances are sent as per the number of patients and not as per the severity of the incident.<br>
</li></ol></li><li>Hospitals<br>
<ol><li>Assume that every hospital has sufficient capacity and is technologically capable of handling every patient, thus it is sufficient for the ambulance driver to take the patient to the nearest available hospital.<br>
</li></ol></li><li>Technological<br>
<ol><li>Assume that the system has sufficient physical fault tolerance: Assume the Internet connection (backup via Satellite), phone network (both landline and cellular systems used), and electrical system (backup with in-house power generator).<br>
</li><li>Assume that the ADS will be run from several physical locations throughout the city thus minimizing the risk that the entire system is inaccessible.<br>
</li><li>Assume that system administrators are always accessible to return ADS to a stable condition at each location the ADS is being operated. This again minimizes the risk of failure at a single location affecting the entire ADS.</li></ol></li></ol>


<h3>2. Current system</h3>

This ADS is designed to be used in a city which does not currently have a software system to assist in the dispatch of ambulances. Thus they currently have few metrics to determine their current efficiency (as measured in total time to transport a patient to the hospital from the time a dispatcher is contacted). However, many other cities are presently using similar ADS. The following system requirements and analysis include failures that have been encountered in other ADS as well as providing additional logical insight to minimize the risk to human life.<br>
<br>
<br>
<h3>3. Proposed system</h3>

<blockquote><h4><i>3.1 Overview</i></h4></blockquote>

This section presents the initial analysis of the ADS. It includes both functional and non-functional requirements analysis in addition to performance, security, and support requirements.<br>
<br>
<blockquote><h4><i>3.2 Functional requirements</i></h4></blockquote>

<ol><li>System input<br>
<ol><li>The system shall receive the following information from the ECT for each call: Location (exact, nearest or best-guess location), Patient condition (on a scale of 1-5 where 5 indicates immediate care required to prevent loss of life and 1 a non-emergency), the number of patients. The ECT must optionally be able to provide a written description regarding the patient's condition (such as the nature of the patient's injuries, age and gender) or any other additional information (an exact room number in a large office building).<br>
</li></ol></li><li>Dispatcher<br>
<ol><li>The dispatcher shall receive the information submitted by the call taker in the order of patient severity followed by the time of the received data by the ADS. The ambulances are assigned as per the severity and not the order of calls received. If two calls have equal severity, then the call whose information was submitted into the ADS shall be serviced first. Note: This differs from the original project description which required an ambulance always be dispatched within 3 minutes if one was available as it defies the ADS main objective, that of saving human life.<br>
</li><li>The dispatcher shall assign the following resources to each submitted case: Number of ambulances. For each ambulance dispatched, its driver must be provided at least the location of the patient and any information regarding the patient's condition that is provided by the call taker's ADS input.<br>
</li><li>The dispatcher shall be able to monitor the location of every operational ambulance.<br>
</li><li>The dispatcher shall be able to edit the severity level of each submitted case.<br>
</li><li>The dispatcher shall be able to change the ambulance's destination while it is en route to any location depending on the severity of the incident. Before ambulances are redirected, there shall be no other available ambulances. If the severity of an incoming case exceeds 3 points on the 10 point patient condition scale, then the ambulance shall be redirected as the new patient requires more immediate attention.<br>
</li><li>The dispatcher shall assign the ambulances through the ADS using the messaging system to communicate with the ambulance driver. Should the ADS messaging system fail, then the dispatcher can resort to cell phone or walkie-talkie communication with the ambulance driver.<br>
</li><li>If the ADS is idle for more than 10 minutes and there are cases in the ADS queue (implying that there is no human servicing the system), the ADS shall start assigning ambulances per the same requirements as the human operator.<br>
</li></ol></li><li>Ambulance driver<br>
<ol><li>The GPS on the ambulance shall periodically send its position and status to the system using the ADS messaging system so that the dispatcher is aware of the ambulance status and position.<br>
</li></ol></li><li>Ambulance administrator<br>
<ol><li>The ambulance administrator shall be able to add and remove ambulances to the ADS system. Each added ambulance shall be added to the ADS with a location.</li></ol></li></ol>

<blockquote><h4><i>3.3 Softgoal Interdependency Diagram</i></h4>
<img src='http://ase-summer09.googlecode.com/files/SIG.jpg' /></blockquote>

<blockquote><h4><i>3.4 Nonfunctional requirements</i></h4></blockquote>

<blockquote>3.4.1 Reliability Requirements</blockquote>

The Ambulance Dispatch System is used to send ambulances to save the lives of the people who may be in emergency conditions. Thus reliability is one of the very important non functional requirements. Reliability can be classified into several categories:<br>
<br>
<ul><li>Consistency:</li></ul>

The system shall consistently provide accurate results, that is, the system shall always locate the nearest available ambulance to the patient. The system shall not provide ambiguous results or randomly provide correct and incorrect results. The system shall notify the dispatcher of possible duplicate calls.<br>
<br>
<ul><li>Fault Detection and Tolerance:</li></ul>

The system shall recover from any exceptions and other error conditions and does not crash while in operation. For this the system shall detect any such errors and report them to the user. In case of a serious exception, the system shall be able to recover from the error and restore the state back to the last stable state.<br>
<br>
<ul><li>Robust:</li></ul>

The system shall handle any conditions outside of normal operating conditions, yet not at the error level, without compromising the system or violating any other functional or nonfunctional requirements.<br>
<br>
<blockquote>3.4.2 Usability Requirements</blockquote>

<ul><li>Usability:</li></ul>

The system shall be user friendly. The system shall allow users to quickly create new incidents, and read and edit existing incidents. In order to facilitate this ease of use, the system shall provide a Graphical User Interface, which clearly shows the map of the site from where the incident was reported. This map shall show the exact locations of the nearest hospital and the ambulance and shall inform the nearest ambulance to the location of incident.<br>
<br>
<ul><li>Understandability:</li></ul>

The system shall be easy to understand and learn how to use. The screens shown in the system shall have all the information that is used in the present manual system and thus shall be easy for the users to learn. It shall provide user manuals and other training materials that shall help the users to easily learn how to use the system effectively.<br>
<br>
<blockquote>3.4.3 Performance Requirements:</blockquote>

<ul><li>Responsiveness:</li></ul>

The system shall be fast and provide accurate results within 1 minute of incident report being examined; that is, from the time the dispatcher starts to work on an incident report (with incidents being pulled from a queue where patient's with higher severity conditions are placed higher). The system shall immediately update the location information of the ambulance every time it receives an update from the operator. The ambulance operator shall report his/her location to the dispatcher periodically.<br>
<br>
<ul><li>Load :</li></ul>

The system shall be capable to process up to 500 calls per day. This figure assumes a metropolitan population of approximately 500,000 people. The system shall support up to 50 dispatchers, 50 ECT and up to 100 ambulances.<br>
<br>
<blockquote>3.4.4 Security Requirements:</blockquote>

<ul><li>Confidentiality:</li></ul>

The system shall only be made available to select employees. It is assumed that said employees who have the ADS installed on their system are required to separately log into their computers, thus no separate login is required for the ADS.<br>
<br>
<ul><li>Integrity:</li></ul>

The system shall make sure that the data that is entered by the user is not altered without his/her knowledge and the data remains secure. This shall be achieved by means of a secure database server<br>

<ul><li>Availability:</li></ul>

The system shall be available for use by the users at all times. This will involve ensuring redundant internet access, database access, and wireless access for all relevant parties. The system shall be available continuously, 24 hours per day, 365 days a year.<br>
<br>
<blockquote>3.4.5 Supportability</blockquote>

The company using the ADS shall provide an ADS administrator who can resolve the technical difficulties that the users encounter while using the ADS. The system shall also provide the services of a system expert who is available to ensure the availability of backup systems (such as networking, etc).<br>
<br>
<br>
<blockquote><h4><i>3.5 System models</i></h4></blockquote>

<blockquote>3.5.1 Scenarios</blockquote>

<ol><li>Carl is out walking his dog and sees Josh who has been stabbed.  Carl calls 911 and and speaks to Susan, the call taker.  Carl provides Susan with the address and details of the situation.  Steve the dispatcher dispatches an available ambulance to the scene.  The ambulance takes Josh to the hospital and reports it is available for dispatch again.<br><br>
</li><li>Little Joey sees his grandpa sprain his ankle.  Juan the call taker receives the call and logs the incident.  Elijah the dispatcher dispatches an ambulance.  A severe fire breaks out and many people are injured.  Christian, a senior dispatcher decides the burn victims are in more critical condition and recalls the ambulance dispatched to Joey's grandpa directing it to help the burn victims.<br><br>
</li><li>Victoria is unsatisfied with her pizza delivery time.  She calls 911 to report that her pizza has not arrived.  Anna, the call taker files an incident and flags it to be ignored due to being a non-emergency situation.<br><br>
</li><li>Brandon calls 911 to report a broken ankle.  Tyler, the call taker flags the incident as non life-threatening.  Then Brandon's grandma, Allison falls down the stairs and is seriously wounded.  Brandon calls back and reports that the situation is now life threatening.  Savannah, the new call taker creates a new incident and Andrew the dispatcher make sure an ambulance is dispatched quickly.<br><br>
</li><li>The city just finished a $500 million program to purchase new ambulances and Gabriel the ambulance administrator adds the new 12 ambulances to the dispatch system.<br><br>
</li><li>An off-duty ambulance is in a serious traffic accident and will be unable to be used anymore.  Emma the ambulance administrator removes the ambulance from the system.<br><br>
</li><li>Isabella, the ambulance driver, reports her location to the system and Madison, the dispatcher, updates the system with the new position data.<br><br>
</li><li>Logan calls in a false fire emergency.  Mia, the call taker logs an incident.  Hannah, the dispatcher dispatches an ambulance to the emergency.  When Ella, the ambulance driver arrives on the scene, she calls and reports that it was a false alarm.  Lily, the dispatcher updates the incident as a false alarm.<br><br>
</li><li>Sarah calls and reports a fire.  Mia logs an incident and Alexis dispatches an ambulance.  Then, Ramon calls and reports the same fire.  The system notifies the call taker that this incident is very similar to an existing incident.  Noah the dispatcher decides this must be the same incident and updates the incident as a duplicate.<br><br>
</li></ol><blockquote>3.5.2 Use case model<br>
3.5.2.1 Use case diagrams<br>
<img src='http://ase-summer09.googlecode.com/files/Ucase.jpg' /></blockquote>

<blockquote>3.5.2.2 Use case templates and Black Box Sequence Diagram</blockquote>

<table><thead><th> Use case name:  </th><th> CRUD Incidents </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Call Taker     </td></tr>
<tr><td> Preconditions:  </td><td> none           </td></tr>
<tr><td> Postconditions: </td><td> The CRUD action is reflected in the system. </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Call Taker (Creates/Retrieves/Updates/Deletes) an incident in the system. </td></tr>
<tr><td> Special Requirements: </td><td> Once an incident is created, it must be dispatched within 3 minutes. </td></tr>
<img src='http://ase-summer09.googlecode.com/files/bb1.jpg' /></tbody></table>

<table><thead><th> Use case name:  </th><th> CRUD Ambulances</th></thead><tbody>
<tr><td> Participating Actors: </td><td> Ambulance Administrator </td></tr>
<tr><td> Preconditions:  </td><td> none           </td></tr>
<tr><td> Postconditions: </td><td> The CRUD action is reflected in the system. </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Ambulance Administrator (Creates/Retrieves/Updates/Deletes) an ambulance in the system. </td></tr>
<tr><td> Special Requirements: </td><td>                </td></tr>
<img src='http://ase-summer09.googlecode.com/files/bb2.jpg' /></tbody></table>

<table><thead><th> Use case name:  </th><th> Retrieve Incident </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher        </td></tr>
<tr><td> Preconditions:  </td><td> none              </td></tr>
<tr><td> Postconditions: </td><td> none              </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher retrieves an incident from the system. </td></tr>
<tr><td> Special Requirements: </td><td>                   </td></tr>
<img src='http://ase-summer09.googlecode.com/files/bb3.jpg' /></tbody></table>

<table><thead><th> Use case name:  </th><th> Retrieve Ambulance </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher         </td></tr>
<tr><td> Preconditions:  </td><td> none               </td></tr>
<tr><td> Postconditions: </td><td> none               </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher retrieves an ambulance from the system. </td></tr>
<tr><td> Special Requirements: </td><td>                    </td></tr>
<img src='http://ase-summer09.googlecode.com/files/bb4.jpg' /></tbody></table>

<table><thead><th> Use case name:  </th><th> Dispatch Ambulance to Incident </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher                     </td></tr>
<tr><td> Preconditions:  </td><td> The ambulance is available.    </td></tr>
<tr><td> Postconditions: </td><td> The ambulance is allocated to the incident. </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher chooses an incident.<br>2. The Dispatcher chooses an available ambulance to dispatch to the given incident.<br>3. The Dispatcher allocates the chosen ambulance. </td></tr>
<tr><td> Special Requirements: </td><td>                                </td></tr>
<img src='http://ase-summer09.googlecode.com/files/bb5.jpg' /></tbody></table>

<table><thead><th> Use case name:  </th><th> Recall Ambulance from Incident </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher                     </td></tr>
<tr><td> Preconditions:  </td><td> The ambulance is allocated to an incident. </td></tr>
<tr><td> Postconditions: </td><td> The ambulance is available.    </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher chooses an incident.<br>2. The Dispatcher chooses a dispatched ambulance to recall.<br>3. The Dispatcher recalls the chosen ambulance. </td></tr>
<tr><td> Special Requirements: </td><td>                                </td></tr>
<img src='http://ase-summer09.googlecode.com/files/bb6.jpg' /></tbody></table>

<blockquote>3.5.3 Object model: Class Diagram<br>
<img src='http://ase-summer09.googlecode.com/files/DesignClass.jpg' /></blockquote>

<blockquote>3.5.4 Dynamic model: White Box Sequence Diagram<br>
<img src='http://ase-summer09.googlecode.com/files/WhiteBox.jpg' /></blockquote>

<blockquote>3.5.5 User interface navigational paths and screen mock-ups<br>
Navigation Path<br>
<img src='http://ase-summer09.googlecode.com/files/Navigation.jpg' />
<br></blockquote>

Call Taker User Interface<br>
<img src='http://ase-summer09.googlecode.com/files/CallTaker.png' />
<br>

Dispatcher User Interface<br>
<img src='http://ase-summer09.googlecode.com/files/Dispatcher.png' />
<br>

Ambulance Administrator User Interface<br>
<img src='http://ase-summer09.googlecode.com/files/AmbulanceAdmin.png' />