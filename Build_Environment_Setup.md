# Overall Setup #

  1. Install [SVN](http://tortoisesvn.net/downloads)
  1. Install Instant Rails (as below)
  1. Install [MySQL GUI tools](http://dev.mysql.com/downloads/gui-tools/5.0.html)
  1. Install [Eclipse](http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/ganymede/SR2/eclipse-java-ganymede-SR2-win32.zip)
  1. Download the project from SVN into the rails\_apps folder
  1. Start the Mongrel web server to serve up the app by:
    1. I -> Rails apps -> Manage rails apps
    1. Check the app to run
    1. Press "Start with Mongrel" button.
  1. Browse to http://localhost:3000/cs6354/home/

# Instant Rails Setup #

  1. Download Instant Rails v2.0 from here: <br><a href='http://rubyforge.org/frs/?group_id=904'>Instant Rails</a>
<ol><li>Unzip the file to C:/ (it will expand to C:/Instant Rails).<br>
</li><li>Run Instant Rails.exe<br>
</li><li>Click OK to regenerate config files.<br>
</li><li>I -> Configure -> Windows Hosts File - Make sure the line "127.0.0.1    localhost" appears in the file