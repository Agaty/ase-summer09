<font color='red' size='6'>Do not make any more edits here.  Please make further edits in phase 2 after 6/13</font>

Akhil Chopra<br>
Chad Gabrysch<br>
Katie Roberts Hoffman<br>
Rajeev Sharma<br>
Ryan Kelly<br>

Project website: <a href='http://code.google.com/p/ase-summer09'>http://code.google.com/p/ase-summer09</a>

<h2>Software Project Management Plan</h2>

<br>
<br>
<h3>Version</h3>
<table><thead><th> <b>Version</b> </th><th> <b>Date</b> </th><th> <b>Author</b> </th><th> <b>Comments</b> </th></thead><tbody>
<tr><td> 0.1            </td><td> 6/6/09      </td><td> Katie         </td><td> Initial draft   </td></tr>
<tr><td> 0.15           </td><td> 6/6/09      </td><td> Ryan          </td><td> Added scenerios </td></tr>
<tr><td> 0.2            </td><td> 6/7/09      </td><td> Akhil & Rajeev </td><td> Added Non Functional Requirements </td></tr>
<tr><td> 0.3            </td><td> 6/7/09      </td><td> Akhil & Rajeev </td><td> Added Assumptions & Dependencies </td></tr>
<tr><td> 0.4            </td><td> 6/7/09      </td><td> Akhil & Rajeev </td><td> Uploaded SIG and Process Specification for review</td></tr>
<tr><td> 0.5            </td><td> 6/9/09      </td><td> Akhil & Rajeev </td><td> Added Functional Requirements,Updated Section 1.7</td></tr>
<tr><td> 0.6            </td><td> 6/12/09     </td><td> Katie         </td><td> Added Introduction and Current System Info </td></tr>
<tr><td> 0.7            </td><td> 6/13/09     </td><td> Chad          </td><td> Added Additional Nonfunctional Requirements and Usability </td></tr>
<tr><td> 0.8            </td><td> 6/13/09     </td><td> Ryan          </td><td> Added use-case diagrams and templates </td></tr></tbody></table>

<h3>1 Introduction</h3>
<blockquote><i>1.1 Purpose of the system</i></blockquote>

This ambulance dispatch system (ADS) is designed to facilitate the orderly and timely direction of ambulances throughout a metropolitan area to minimize the loss of human life. Unfortunately there have been several reported failures of similar ambulance dispatch systems resulting in casualties (see Section 1.5 - References for more information).<br>
<br>
<blockquote><i>1.2 Scope of the system</i></blockquote>

This system will accept input from an emergency call taker, such as those on the receiving end of a 911 call amongst others. It will provide information to the ambulance dispatcher so that s/he can best inform the ambulance drivers of their next destination. In addition, the dispatcher will be able to continuously monitor the ambulance's progress to the hospital and update the ambulance driver's destination if needed.<br>
<br>
<blockquote><i>1.3 Objectives and success criteria of the project</i></blockquote>

The primary objective of this system is to provide ambulance drivers the requisite information such that the maximum number of human lives can be saved. An outline of said information is discussed in detail throughout this document.<br>
<br>
This project will be deemed successful if it meets the requirements as set forth in this document. Included in these requirements are commitments to ensure that the output from the system reduces the number of casualties.<br>
<br>
<blockquote><i>1.4 Definitions, acronyms, and abbreviations</i></blockquote>

<ul><li>ADS - Ambulance Dispatch System, the name of this software system.</li></ul>

<ul><li>CRUD - Create, Read, Update, Delete.  Used for use cases involving the manipulation of a particular set of data.</li></ul>

<blockquote>For example, the set of CRUD operations related to Ambulances would be:<br>
</blockquote><ol><li><b>C</b> reating an ambulance<br>
</li><li><b>R</b> etrieving data about a particular ambulance<br>
</li><li><b>U</b> pdating data about a particular ambulance<br>
</li><li><b>D</b> eleting an ambulance.</li></ol>

<ul><li>ECT - Emergency Call Taker, receives information from 911 callers.</li></ul>

<ul><li>GPS - Global Positioning System, provides vehicle operators with the most efficient directions to reach a specific address using up-to-date traffic information.</li></ul>

<ul><li>RAD - Requirements Analysis Document (this document)</li></ul>

<ul><li>Call Taker - A person who takes the call from the caller and enters the case information as reported into the ADS.</li></ul>

<ul><li>Dispatcher - A person who receives the information entered by the call taker and assigns resources to the case through the ADS.</li></ul>

<blockquote><i>1.5 References</i></blockquote>

<ul><li>Ambulance Dispatch System Articles provided by Dr. Lawrence Chung - <a href='http://utdallas.edu/~chung/CS6354/'>http://utdallas.edu/~chung/CS6354/</a>
</li><li>Ambulance Dispatch System Project Definition provided by Dr. Lawrence Chung - <a href='http://utdallas.edu/~chung/CS6354/Project.doc'>http://utdallas.edu/~chung/CS6354/Project.doc</a></li></ul>

<blockquote><i>1.6 Overview</i></blockquote>

The problem statement has been provided by Dr. Lawrence Chung and is available at <a href='http://utdallas.edu/~chung/CS6354/Project.doc'>http://utdallas.edu/~chung/CS6354/Project.doc</a>. Additional references have been provided that show examples of known failures of existing systems.<br>
<br>
<blockquote><i>1.7Assumptions and Dependencies</i></blockquote>

<ol><li>Dispatcher<br>
<ol><li>Assume the dispatcher has clearly defined guidelines for how to enter information into the ADS.<br>
</li><li>Assume the dispatcher has been sufficiently trained to use the ADS correctly.<br>
</li></ol></li><li>Emergency Call Taker<br>
<ol><li>Assume the ECT has obtained as much information about the location and condition of the patient from the caller as possible.<br>
</li><li>Assume the ECT has correctly entered this information into the ADS.<br>
</li></ol></li><li>Ambulance<br>
<ol><li>Assume that each ambulance is equipped with a state-of-the-art GPS system which provides directions to a specific address.<br>
</li><li>Assume the GPS system includes traffic conditions in the calculation of routes.<br>
</li><li>Assume ambulance drivers are knowledgeable of the roads throughout the city and can navigate via maps (located on each ambulance) in the case of GPS failure.<br>
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

<blockquote><i>3.1 Overview</i></blockquote>

This section presents the initial analysis of the ADS. It includes both functional and non-functional requirements analysis in addition to performance, security, and support requirements.<br>
<br>
<blockquote><i>3.2 Functional requirements</i></blockquote>

<ol><li>The call taker shall answer the call from the caller and use the system to record the conversation. The call taker shall see a list of specific pre-defined questions as soon as the call is connected. The questions shall be: What is the location of the caller and the concerned incident? What’s the nearest street the caller can see? What’s the nearest building the caller can see? What’s the nearest parking lot the caller can see? What’s the age of the patient? What‘s the sex of the patient? What’s the current situation of the patient: Is the patient conscious?, Is the patient bleeding?<br>
</li><li>The call taker shall submit the information in the following format:Number of Patients,Location,Status,Age,Sex.<br>
</li><li>The dispatcher shall receive all the information submitted by the caller taker and assign the following resources and status to the case:Priority, Number of Ambulances, Type of Ambulances, Location of 2 nearby hospitals.<br>
</li><li>The dispatcher shall provide the ambulance driver with the following information: Location, Priority, and Location of 2 nearest hospital to the incident location.<br>
</li><li>The GPS on the ambulance shall acknowledge its position to the system so that the dispatcher is aware of the ambulance status and position every 10 mins.<br>
</li><li>The dispatcher shall be able to monitor all the cases and ambulances.<br>
</li><li>The dispatcher shall be able to edit the priority level to the case and convey the same to the ambulance driver.<br>
</li><li>The dispatcher shall communicate with the driver through the system via automated messages. Along with this the both dispatcher and ambulance driver shall be able to communicate with each other through Walkie-talkie.<br>
</li><li>If the caller calls from the same number more than once then the system shall route the case to the supervisor of the dispatcher. The supervisor shall review the case and take suitable action.<br>
</li><li>If system is idle for a more than 10 mins, then system shall start dispatching ambulances automatically based on priority.</li></ol>

<blockquote><i>3.3 Softgoal Interdependency Diagram</i></blockquote>

<blockquote><i>3.4 Nonfunctional requirements</i></blockquote>

<ul><li>3.4.1 Reliability Requirements</li></ul>

The Ambulance Dispatch System is used to send ambulances to save the lives of the people who may be in emergency conditions. Thus reliability is one of the very important non functional requirements. Reliability can be classified into several categories:<br>
<br>
<ul><li>Availability:</li></ul>

The system shall be available for use by the users at all times or as often as can be reasonably expected.  This will involve ensuring redundant internet access, database access, and wireless access for all relevant parties.<br>
<br>
<ul><li>Consistency:</li></ul>

The system shall consistently provide accurate results while finding the location of the ambulances and estimating their time to arrive at the reported location. The system shall not provide ambiguous results or randomly provide correct and incorrect results. The system shall notify the dispatcher of possible duplicate calls.<br>
<br>
<ul><li>Fault Detection and Tolerance:</li></ul>

The system shall recover from any exceptions and other error conditions and does not crash while in operation. For this the system shall detect any such errors and report them to the user. In case of a serious exception, the system shall be able to recover from the error and restore the state back to the last stable state.<br>
<br>
<ul><li>Robust:</li></ul>

The system shall handle any conditions outside of normal operating conditions, yet not at the error level, without compromising the system or violating any other functional or nonfunctional requirements.<br>
<br>
<ul><li>3.4.2 Usability Requirements</li></ul>

<ol><li>Usability:</li></ol>

The system shall be user friendly and allows the user to quickly create new incidents, read and edit existing incidents. In order to facilitate this ease of use, the system shall provide a Graphical User Interface, which clearly shows the map of the site from where the incident was reported. This map shall show the exact locations of the nearest hospital and the ambulance and shall assist the call taker to send the nearest ambulance to the location of incident. The system shall automatically suggest address locations based on the descriptions provided by the caller.<br>
<br>
<ol><li>Understandability:</li></ol>

The system shall be easy to understand and learn how to use. The screens shown in the system shall have all the information that is used in the present manual system and thus shall be easy for the users to learn. It shall provide user manuals and other training materials that shall help the users to easily learn how to use the system effectively.<br>
<br>
<ul><li>3.4.3 Performance Requirements:</li></ul>

<ol><li>Responsiveness:</li></ol>

The system shall be fast and provide accurate results within 1 minute of incident report input so that the ambulance could be sent within 3 minutes. The system shall immediately update the location information of the ambulance every time it receives an update from the operator. The ambulance operator shall report his/her location to the dispatcher every 5 minutes.<br>
<br>
<ol><li>Load :</li></ol>

The system shall be capable to process up to 500 calls per day. The system shall support 50 dispatchers to record incidents and can support up to 100 ambulances.<br>
<br>
<ul><li>3.4.4 Security Requirements:</li></ul>

<ol><li>Confidentiality:</li></ol>

The system shall provide confidentiality to the users. The users shall be first authenticated with their user id and password and if found to be valid users are allowed access to use the system<br>
<br>
<ol><li>Integrity:</li></ol>

The system shall make sure that the data that is entered by the user is not altered without his/her knowledge and the data remains secure. This shall be achieved by means of a secure database server<br>
<br>
<ol><li>Availability:</li></ol>

The system shall be available continuously, 24 hours per day, 365 days a year.<br>
<br>
<ul><li>3.4.5 Supportability</li></ul>

The system shall provide the help of a system administrator who can help resolve technical difficulties that the users are facing. The system shall also provide the services of a system expert who helps the users in using the system. The system expert shall be supervisors and shall be available to answer the technical questions by phone.<br>
<br>
<br>
<blockquote><i>3.5 System models</i></blockquote>

<ul><li>3.5.1 Scenarios</li></ul>

<ol><li>Carl is out walking his dog and sees Josh who has been stabbed.  Carl calls 911 and and speaks to Susan, the call taker.  Carl provides Susan with the address and details of the situation.  Steve the dispatcher dispatches an available ambulance to the scene.  The ambulance takes Josh to the hospital and reports it is available for dispatch again.<br><br>
</li><li>Little Joey sees his grandpa sprain his ankle.  Juan the call taker recieves the call and logs the incident.  Elijah the dispatcher dispatches an ambulance.  A severe fire breaks out and many people are injured.  Christian, a senior dispatcher decides the burn victims are in more critical condition and recalls the ambulance dispatched to Joey's grandpa directing it to help the burn victims.<br><br>
</li><li>Victoria is unsatisfied with her pizza delivery time.  She calls 911 to report that her pizza has not arrived.  Anna, the call taker files an incident and flags it to be ignored due to being a non-emergency situation.<br><br>
</li><li>Brandon calls 911 to report a broken ankle.  Tyler, the call taker flags the incident as non life-threatening.  Then Brandon's grandma, Allison falls down the stairs and is seriously wounded.  Brandon calls back and reports that the situation is now life threatening.  Savannah, the new call taker updates the incident to be serious and an ambulance is dispatched quickly.<br><br>
</li><li>The city just finished a $500 million program to purchase new ambulances and Gabriel adds the new 12 ambulances to the dispatch system.<br><br>
</li><li>An off-duty ambulance is in a serious traffic accident and will be unable to be used anymore.  Emma removes the ambulance from the system.<br><br>
</li><li>Isabella, the ambulance driver reports her location to the system and Madison, the dispatcher updates the system with the new position data.<br><br>
</li><li>Logan calls in a false fire emergency.  Mia, the call taker logs an incident.  Hannah, the dispatcher dispatches an ambulance to the emergency.  When Ella, the ambulance driver arrives on the scene, she calls and reports that it was a false alarm.  Lily, the call taker flags the incident as a false alarm.<br><br>
</li><li>Sarah calls and reports a fire.  Mia logs an incident and Alexis dispatches an ambulance.  Then, Ryan calls and reports the same fire.  The system notifies the call taker that this incident is very similar to an existing incident.  Noah decides this must be the same incident and flags the incident as a duplicate.<br><br>
</li></ol><ul><li>3.5.2 Use case model<br>
</li><li>3.5.2.1 Use case diagrams<br>
<img src='http://ase-summer09.googlecode.com/files/use%20case%20model.png' /></li></ul>

<a href='http://ase-summer09.googlecode.com/files/use%20case%20model.uml'>This is a StarUML file of the use-case model</a>

<ul><li>3.5.2.2 Use case templates</li></ul>

<table><thead><th> Use case name:  </th><th> CRUD Incidents </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Call Taker     </td></tr>
<tr><td> Preconditions:  </td><td> none           </td></tr>
<tr><td> Postconditions: </td><td> The CRUD action is reflected in the system. </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Call Taker (Creates/Retrieves/Updates/Deletes) an incident in the system. </td></tr>
<tr><td> Special Requirements: </td><td> Once an incident is created, it must be dispatched within 3 minutes. </td></tr></tbody></table>

<table><thead><th> Use case name:  </th><th> CRUD Ambulances</th></thead><tbody>
<tr><td> Participating Actors: </td><td> Ambulance Administrator </td></tr>
<tr><td> Preconditions:  </td><td> none           </td></tr>
<tr><td> Postconditions: </td><td> The CRUD action is reflected in the system. </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Ambulance Administrator (Creates/Retrieves/Updates/Deletes) an ambulance in the system. </td></tr>
<tr><td> Special Requirements: </td><td>                </td></tr></tbody></table>

<table><thead><th> Use case name:  </th><th> Retrieve Incident </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher        </td></tr>
<tr><td> Preconditions:  </td><td> none              </td></tr>
<tr><td> Postconditions: </td><td> none              </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher retrieves an incident from the system. </td></tr>
<tr><td> Special Requirements: </td><td>                   </td></tr></tbody></table>

<table><thead><th> Use case name:  </th><th> Retrieve Ambulance </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher         </td></tr>
<tr><td> Preconditions:  </td><td> none               </td></tr>
<tr><td> Postconditions: </td><td> none               </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher retrieves an ambulance from the system. </td></tr>
<tr><td> Special Requirements: </td><td>                    </td></tr></tbody></table>

<table><thead><th> Use case name:  </th><th> Dispatch Ambulance to Incident </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher                     </td></tr>
<tr><td> Preconditions:  </td><td> The ambulance is available.    </td></tr>
<tr><td> Postconditions: </td><td> The ambulance is allocated to the incident. </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher chooses an ambulance to send to the particular incident.<br>2. The Dispatcher allocates that ambulance to the given incident.  </td></tr>
<tr><td> Special Requirements: </td><td>                                </td></tr></tbody></table>

<table><thead><th> Use case name:  </th><th> Recall Ambulance from Incident </th></thead><tbody>
<tr><td> Participating Actors: </td><td> Dispatcher                     </td></tr>
<tr><td> Preconditions:  </td><td> The ambulance is allocated to an incident. </td></tr>
<tr><td> Postconditions: </td><td> The ambulance is available.    </td></tr>
<tr><td> Flow of Events: </td><td> 1. The Dispatcher chooses an allocated ambulance to recall.<br>2. The Dispatcher recalls the ambulance from the given incident. </td></tr>
<tr><td> Special Requirements: </td><td>                                </td></tr></tbody></table>

<ul><li>3.5.3 Object model <b>Omitted in Phase 1, Added in Phase 2</b></li></ul>

<ul><li>3.5.4 Dynamic model <b>Omitted in Phase 1, Added in Phase 2</b></li></ul>

<ul><li>3.5.5 User interface navigational paths and screen mock-ups <b>Omitted in Phase 1, Added in Phase 2</b></li></ul>

System models describes the scenarios, use cases, object model, and dynamic models for the system. This section contains the complete functional specification, including mock-ups illustrating the user interface of the system and navigational paths representing the sequence of screens. The subsections Object model and Dynamic model are written during the Analysis activity.<br>
<br>
<h3>Glossary</h3>

A glossary of important terms, to ensure consistency in the specification and to ensure that we use the client's terms.