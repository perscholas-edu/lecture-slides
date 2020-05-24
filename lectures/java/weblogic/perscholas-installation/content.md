# Application Logic Layers

-
-
## Overview
* Create Oracle Software Delivery Cloud Account
* Install `WSL` (Windows Subsystem for Linux)
* Install Ubuntu on Windows
* Download Java SE 7 or Higher

-
###  Download Java SE 7 or Higher
* Click [here](https://www.oracle.com/java/technologies/javase-jdk14-downloads.html) or navigate to the link below to download JDK14
    * https://www.oracle.com/java/technologies/javase-jdk14-downloads.html

-
### Create Oracle Software Delivery Cloud Account
* Click [here](https://profile.oracle.com/myprofile/account/create-account.jspx?pid=edelivery&nexturl=https%3A//edelivery.oracle.com/osdc/faces/Home.jspx) or navigate to the link below to create an `Oracle Software Delivery Cloud Account`
  * `https://profile.oracle.com/myprofile/account/create-account.jspx?pid=edelivery&nexturl=https%3A//edelivery.oracle.com/osdc/faces/Home.jspx`



-
### Install `WSL` (Windows Subsystem for Linux)
* Hold `Windows` and press `R` on the keyboard to display the `run` window.
    * execute `optionalfeatures`
* From the `Windows Features` window, scroll until `Windows Subsystem for Linux (Beta)` becomes visible and select its checkbox.

-
### Install Ubuntu on Windows
* Once you have installed `Windows Subsystem for Linux` and you have restarted your system, execute `bash` from the command prompt.
* The message `This will install Ubuntu on Windows, distributed by Canonical and… . Type “y” to continue.` will display.
    * Press `y` to begin downloading.
* After sometime the message `Installation Successful! The environment will start momentarily…` will display.
* `bash` commands become available.
* For example, `bash myscript.sh`.


<!-- -
### Execute `WGET` script
* Execute the `wget.sh` script, local to this project to download the `Oracle WebLogic Server Standard Edition 12.2.1.2.0`.
* The file can be accessed by clicking [here](./wget.sh)
* Upon executing the file, log in with your `Oracle Software Delivery Cloud Account`. -->



### Download Oracle WebLogic Server
* Click [here](https://www.oracle.com/middleware/technologies/fusionmiddleware-downloads.html#license-lightbox) or navigate to the link below to begin downloading Oracle WebLogic Serve
    * https://www.oracle.com/middleware/technologies/fusionmiddleware-downloads.html#license-lightbox
* Click [here](https://www.oracle.com/middleware/technologies/weblogic-server-downloads.html) or navigate to the link below to view all WebLogic Server releases.
    * https://www.oracle.com/middleware/technologies/weblogic-server-downloads.html