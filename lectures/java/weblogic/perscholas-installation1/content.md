


## Download and install Java EE
* Video reference: https://www.youtube.com/watch?v=hPsq3H0LNj8
* Java EE download: https://www.oracle.com/java/technologies/java-ee-sdk-download.html
* Confirm proper installation upon executing downloaded file.
	* run the `startserv.bat` in the `./glassfish/glassfish5/bin/` directory
* From a browser, access `localhost:4848` to confirm that the GlassFish console appears.

## Specify JDK of a Glassfish domain
* Article Refernce: https://stackoverflow.com/questions/10444959/how-do-i-specify-the-jdk-for-a-glassfish-domain
* Some suggest viewing the below link as a more through explanation.
	* `http://alvinalexander.com/blog/post/java/fixing-glassfish-jdk-path-problem-solved/`
* The Java Path is configured in ``./glassfish/config/asenv.bat` as

```dos
REM set AS_JAVA=C:\Program Files\Java\jdk1.6.0_04\jre/..
set AS_JAVA=C:\Program Files\Java\jdk1.5.0_16
```


## Download WebLogic Server 12c
* Video reference: https://www.youtube.com/watch?v=47mc61kLKnc&list=PLzS3AYzXBoj-bmjanc0enEDybX9v0OxAP&index=1
1. Log into Oracle Software Delivery
2. Navigate to https://www.oracle.com/technetwork/middleware/weblogic/downloads/index.html
3. Upon successful download, a file named `fmw_${version}_wls.zip` will be archived in the `~/downloads` directory.
4. Extract the file.


## Installing WebLogic Server on Windows
* Upon extraction of `~/downloads/fmw_${version}_wls.zip`, a `.jar` and `readme.html` will be at the root of the extracted directory.
* Using a command prompt **As Administator**, execute `java -jar ~/downloads/fmw_${version}_wls/fmw_${version}_wls.jar` to run WebLogic Server
