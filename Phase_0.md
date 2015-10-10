Akhil Chopra<br>
Chad Gabrysch<br>
Katie Roberts Hoffman<br>
Rajeev Sharma<br>
Ryan Kelly<br>

Project website: <a href='http://code.google.com/p/ase-summer09'>http://code.google.com/p/ase-summer09</a>

<h2>Software Project Management Plan</h2>

<br>
<br>
<h3>1. Introduction</h3>

<blockquote><i>1.1 Project overview</i></blockquote>

<ul><li>Recent research indicates that there is a great demand for a good ambulance dispatch system. Calling 911 and asking for the ambulance service would connect the caller to a dispatcher (also called dispatch controller) who feeds the information s/he receives from the caller into the system. The system would allocate and mobilize a suitable ambulance within 3 minutes, transmit details to the selected vehicle, and track and monitor actual performance and position. An exception message shall be generated if no free ambulance is available for at least 11 minutes. The system would show the location of each patient and the nearest three ambulances. The system would utilize the notion of ubiquitous computing as much as possible to help with human health and life, which might necessitate going beyond the scope of the traditional ambulance dispatch system.</li></ul>

<blockquote><i>1.2 Evolution of this document</i></blockquote>

<table><thead><th> <b>Version</b> </th><th> <b>Date</b> </th><th> <b>Author</b> </th><th> <b>Comments</b> </th></thead><tbody>
<tr><td> 0.1            </td><td> 6/2/09      </td><td> Akhil         </td><td> Initial draft   </td></tr>
<tr><td> 0.2            </td><td> 6/3/09      </td><td> Ryan          </td><td> Updated Managerial Process section </td></tr>
<tr><td> 0.3            </td><td> 6/3/09      </td><td> Ryan          </td><td> filled in project deliverables </td></tr>
<tr><td> 0.4            </td><td> 6/3/09      </td><td> Ryan          </td><td> General editing </td></tr></tbody></table>

<blockquote><i>1.3 Project deliverables</i></blockquote>

<table><thead><th> 1 </th><th> Requirements Specification </th><th> Includes Functional and Non-functional requirements plus use cases </th></thead><tbody>
<tr><td> 2 </td><td> Requirements Analysis      </td><td> Includes content from 1 plus high level object model and sequence diagrams </td></tr>
<tr><td> 3 </td><td> Architecture Specification </td><td> Includes a sub-system decomposition of 2 plus additional system-scale planning </td></tr>
<tr><td> 4 </td><td> Object Specification       </td><td> Includes detailed, low level class design based on 2 and 3         </td></tr>
<tr><td> 5 </td><td> Code                       </td><td> Includes a functioning prototype of the system                     </td></tr>
<tr><td> 6 </td><td> Test Plan                  </td><td> Includes test cases and a plan for implementing them               </td></tr></tbody></table>



<blockquote><i>1.4 References</i></blockquote>

<ul><li>UT-Dallas CS 6354 homepage - <a href='http://www.utdallas.edu/~chung/CS6354/'>link</a></li></ul>

<blockquote><i>1.5 Definitions, acronyms, and abbreviations</i></blockquote>

<table><thead><th> <b>Acronym</b> </th><th> <b>Definition</b> </th></thead><tbody>
<tr><td> ADS            </td><td> Ambulance Dispatch System </td></tr>
<tr><td> Ajax           </td><td> Asynchronous JavaScript and XML </td></tr>
<tr><td> GUI            </td><td> Graphical User Interface </td></tr>
<tr><td> JS             </td><td> JavaScript        </td></tr>
<tr><td> SPMP           </td><td> Software Project Management Plan (this document) </td></tr></tbody></table>

<hr />

<h3>2. Project organization</h3>

<blockquote><i>2.1 Process model</i></blockquote>

<ul><li>We will be following the Waterfall model for the project, which means that it is possible to go to higher stage and change the process if at some later stage the process seems to have any faulty assumptions.</li></ul>

<blockquote><i>2.2 Organizational structure</i></blockquote>

<ul><li>The team has 5 team members and there are 5 deliverables with 6 phases. There is a team leader for each phase</li></ul>

<blockquote><i>2.3 Organizational boundaries and interfaces</i></blockquote>

<ul><li>The following is the information of team members with their details in alphabetical order:<br>
<table><thead><th> <b>Name</b> </th><th> <b>Email</b> </th></thead><tbody>
<tr><td> Akhil Chopra	</td><td> airakhil@gmail.com </td></tr>
<tr><td> Chad Gabrysch </td><td> chadgabrysch@gmail.com </td></tr>
<tr><td> Ryan Kelly  </td><td> ryak2002@gmail.com </td></tr>
<tr><td> Katie Roberts Hoffman </td><td> katierh@gmail.com </td></tr>
<tr><td> Rajeev Sharma </td><td> snrajeev@gmail.com </td></tr></li></ul></tbody></table>

<blockquote><i>2.4 Project responsibilities</i></blockquote>

Team leaders during each phase will be responsible for coordinating the following:<br>
<ul><li>Team meetings: Arranging a date, time and place for the meeting, Creating and maintaining meeting minute notes on the team wiki, Verifying all action items are completed<br>
</li><li>Team communications: Distributing relevant information to all team members<br>
</li><li>Team deliverables: Including but not limited to assembly and submitting a hard-copy of the report, creating a relevant TAG in SVN, Verifying submitted work is of acceptable quality<br>
Team members are expected to do the following in every stage:<br>
</li><li>Attend team meetings<br>
</li><li>Review each Phase Report for delivery and make necessary modifications<br>
</li><li>Complete agreed upon action items by stated deadline<br>
</li><li>Working on their assigned code in a separate TAG<br>
</li><li>Merging code changes into the trunk at least 3 days prior to any formal code delivery(while leaving the trunk in a stable condition)</li></ul>

<hr />

<h3>3. Managerial process</h3>

<blockquote><i>3.1 Management objectives and priorities</i></blockquote>

<blockquote>The team leader's responsibilities are outlined in Section 2.4.</blockquote>

<blockquote><i>3.2 Assumptions, dependencies, and constraints</i></blockquote>

<blockquote>The team will make every effort to match the situation and environment of a "real life" team developing an Ambulance Dispatch System, but some aspects of project development may be limited given the innate constraints of a classroom environment.</blockquote>

<blockquote><i>3.3 Risk management</i></blockquote>

<blockquote>Given that the schedule for the project is very aggressive, precautions will need to be taken to assure that all deliverables are ready by the time they are due.</blockquote>

<blockquote>The team will attempt to accomplish this by allowing contingency time when scheduling work on the project.</blockquote>

<blockquote>If after all efforts, a due date still appears to be untenable, the group will request that deliverable be rolled into the subsequent deliverable as outlined on the course syllabus.</blockquote>

<blockquote><i>3.4 Monitoring and controlling mechanisms</i></blockquote>

<blockquote>During team meetings, team members will be assigned work to be completed by a specified date.  Each team member is responsible for making sure they are able to complete the work allocated to them.</blockquote>

<blockquote>If for some reason they are unable to complete their assigned work they should contact the project manager immediately so the work can be completed by someone else.  This is only expected to occur during emergency situations, however.</blockquote>

<hr />

<h3>4. Technical process</h3>

<blockquote><i>4.1 Methods, tools, and techniques</i></blockquote>

<ul><li>The following is the tentative list of the tools used for different purposes during the life cycle of the project<br>
<table><thead><th> <b>Purpose</b> </th><th> <b>Tool</b></th></thead><tbody>
<tr><td> UML Tools      </td><td> Rational Rose, jude </td></tr>
<tr><td> Communication Tools </td><td> Google Group, this wiki </td></tr>
<tr><td> Source Control </td><td> Google Code SVN </td></tr>
<tr><td> Website        </td><td> <a href='http://code.google.com/p/ase-summer09'>http://code.google.com/p/ase-summer09</a> </td></tr></li></ul></tbody></table>

<blockquote><i>4.2 Software documentation</i></blockquote>

<ul><li>Each team member is responsible for adequately documenting their code</li></ul>

<blockquote><i>4.3 Project support functions</i></blockquote>

<hr />

<h3>5. Work elements, schedule, and budget</h3>

<blockquote><i>5.1 Work Elements</i></blockquote>

<blockquote><i>5.2 Schedule</i></blockquote>

<table><thead><th> <b>Phase</b> </th><th> <b>Date Due</b> </th><th> <b>Documentation</b> </th><th> <b>Deliverable</b> </th><th> <b>Manager</b> </th></thead><tbody>
<tr><td> Phase 0      </td><td> June 4          </td><td> Software Project Management Plan </td><td> N/A                </td><td> Chad           </td></tr>
<tr><td> Phase 1      </td><td> June 16         </td><td> Requirements Specification </td><td> 0.1                </td><td> Chad           </td></tr>
<tr><td> Phase 2      </td><td> June 23         </td><td> Analysis             </td><td> 0.2                </td><td> Akhil          </td></tr>
<tr><td> Phase 3      </td><td> July 7          </td><td> Architecture Specification </td><td> 0.3                </td><td> Katie          </td></tr>
<tr><td> Phase 4      </td><td> July 16         </td><td> Component/Object Specification </td><td> 0.4                </td><td> Rajeev         </td></tr>
<tr><td> Phase 5      </td><td> July 28         </td><td> Final Project Demo/Documentation </td><td> 1.0                </td><td> Ryan           </td></tr>