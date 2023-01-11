# TestScript
This script is written in the BASH programming language and is intended for initial testing of the server equipment of Zvezda LLC.


This script checks these parameters:

Information about the motherboard;
BIOS Version Information;
Writing the server's Mac address to BМC using ipmitool;
Checking installed PCI devices;
Checking RAM slots;
Output information about connected disks;
Checking connected USB devices;
Checking network ports, their status and received IP addresses;
Output information about processors installed on the server;
There is also a 10-minute load stress testing with 100% load of each processor core, 85% load of RAM and monitoring of temperature parameters using the TMUX utility. (Currently commented out)

For each individual testing block there is its own condition, if met or not met, the result is output: "TEST PASSED" or "TEST FAILED".

At the end of the entire test, the result of the status will be displayed: the server is good / the server is bad.
test.