# The Middle Tier Software Component



-
-
## Overview
* Functions
* Architecture

-
# Point1
* contains WebLogic Server and other servers that are addressed directly by clients, such as existing Web servers or proxy servers.

* The middle tier includes WebLogic Server and other Web servers, firewalls, and proxy servers that mediate traffic between clients and WebLogic Server. The Nokia WAP server, part of the BEA mobile commerce solution, is an example of another middle tier server that provides connectivity between wireless devices and WebLogic Server.

* Applications based on a multitier architecture require reliability, scalability, and high performance in the middle tier. The application server you select for the middle tier is, therefore, critical to the success of your system.

* The WebLogic Server cluster option allows you to distribute client requests and back-end services among multiple cooperating WebLogic Servers. Programs in the client tier access the cluster as if it were a single WebLogic Server. As the workload increases, you can add WebLogic Servers to the cluster to share the work. The cluster uses a selectable load-balancing algorithm to choose a WebLogic Server in the cluster that is capable of handling the request.

* When a request fails, another WebLogic Server that provides the requested service can take over. Failover is transparent whenever possible, which minimizes the amount of code that must be written to recover from failures. For example, servlet session state can be replicated on a secondary WebLogic Server so that if the WebLogic Server that is handling a request fails, the client's session can resume uninterrupted on the secondary server. WebLogic EJB, JMS, JDBC, and RMI services are all implemented with clustering capabilities. 
