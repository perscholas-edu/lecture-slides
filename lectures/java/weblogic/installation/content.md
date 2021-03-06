# WebLogic Server Installation




-
-
## Overview
* Obtaining The Executable
* Installing The Executable



-
### Obtaining Binary
1. Create Oracle Software Delivery Cloud Account
2. Navigate To Oracle Software Delivery Cloud
3. Search and Find Product
4. Select Product
5. Select Edition
6. Select Release
7. License Agreement
8. Download



-
#### 1. Create Oracle Software Delivery Cloud Account
* Click [here](https://profile.oracle.com/myprofile/account/create-account.jspx?pid=edelivery&nexturl=https%3A//edelivery.oracle.com/osdc/faces/Home.jspx) or navigate to the link below to create an `Oracle Software Delivery Cloud Account`
  * `https://profile.oracle.com/myprofile/account/create-account.jspx?pid=edelivery&nexturl=https%3A//edelivery.oracle.com/osdc/faces/Home.jspx`




-
#### 2. Navigate To Oracle Software Delivery Cloud
* Click [here](https://edelivery.oracle.com) or navigate to the link below to access the `Delivery Cloud`
  * `https://edelivery.oracle.com`
* Review the site usage license agreement and click the `Accept` button to continue.



-
#### 3. Search and Find Product
* In `Oracle Software Delivery Cloud`, in the `Filter Products By` list of checkboxes, be sure `Programs` is checked.
* In the `Product` field, enter this string:
  * `Oracle WebLogic Server, Standard Edition`

![](./imgs/downloading/wls_obtain_1.gif)
 

-
#### 4. Select Product
* On `Oracle Software Delivery Cloud` window, in the add the download package (DL) named `Oracle WebLogic Server Standard Edition 12.2.1.2.0 ( Oracle WebLogic Server Standard Edition )`
![](./imgs/downloading/wls_obtain_2.gif)



-
#### 5. Select Edition
* Select the `Checkout` option from the top right of the window.
![](./imgs/downloading/wls_obtain_3.gif)


-
#### 6. Select Release
* For `Available Release`, turn off all the checkboxes except for the version of the `Oracle WebLogic Server` that is listed in the `Oracle Certifications` for use with the `JD Edwards EnterpriseOne Development Client`.

* Click the Continue button.

![](./imgs/downloading/wls_obtain_4.gif)



-
#### 7. License Agreement
* On `Oracle Standard Terms and Restrictions`, read the license agreement, click the checkbox if you accept, and click the `Continue` button.

![](./imgs/downloading/wls_obtain_4.gif)



-
#### 8. Download
* On the `File Download` screen, click the link for the `Oracle WebLogic Server`.
* Save the downloaded file to your computer.
* Extract the contents of the downloaded file.
* For WebLogic Server 12.2.1 the download should consist of this file or a similar version number:
    * `fmw_12.2.1.0.0_wls.jar`


-
#### 8. Download
![](./imgs/downloading/wls_obtain_5.gif)










-
-
### Installing The Executable


-
#### Identify JDK Bin location
* Execute `which java` from a _bash_ terminal to identify where the jdk has been installed.
* In the example below, the `bin` fullpath is `/c/Program Files/Amazon Corretto/jdk1.8.0_222/bin`
![](./imgs/installing/which-java.png)

-
#### Run the `WebLogic Server 12.2.1.jar`
* From the java `bin` directory, execute the cli argument below
* `java -jar <path_to_wls_file>\fmw_12.1.3.0.0_wls.jar`
* The Java command executes and displays the Welcome screen for the Oracle Fusion Middleware.
  * Continue by pressing `Next`
![](./imgs/installing/wls_welcome.gif)


-
#### Select Installation Location
* From the `Installation Location` Window, in the `Oracle Home` field, enter the path into which you want to install WebLogic Server.
* Oracle recommends that WebLogic is installed in its own root directory.
  * Install in a directory such as c:\WebLogic\WLS12c
  * Do not install into any other Oracle base directory used by another Oracle product, such as `c:\ORACLE`.
![](./imgs/installing/wls_installation_location.gif)


-
#### Select Installation Type
* Select the `WebLogic Server` radio button
![](./imgs/installing/wls_installation_type.gif)


-
#### Prerequisite Checks
* Ensure prequesite checks pass with 100% success
![](./imgs/installing/wls_prereq_checks.gif)

-
#### Installation Summary
* From the `Installation Summary` window, select `install`, then click the `Next` button.
![](./imgs/installing/wls_install_summary.gif)


-
#### Install Progress
* Upon installation completion, the `Installation Progress` window displays 100%.
![](./imgs/installing/wls_end_installation.gif)


-
#### Launch Configuration Window
* On the `Installation Complete` window, select the `Automatically Launch the Configuration` checkbox.
![](./imgs/installing/wls_end_installation_2.gif)


<!-- https://www.itechtics.com/run-programs-administrator/ -->