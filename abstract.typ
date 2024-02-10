Most fuzzing methodologies are based on text inputs, that are crafted or randomly created to find bugs and input vulnerabilities in programs.
While fuzzing Android applications is not an entirely new field, doing it specifically by using QR code inputs is still a less explored technique.
_QRFuzz_ by @QRFuzz is one of the first implementations of this kind of testing, however it is limited by its use of a physical device and actual QR codes to scan, that cause difficulties in testing and pose a limit to the automation and scalability of the process.

In this report, we provide an alternative design to the framework presented in @carboni2023if (_If You’re Scanning This, It’s Too Late! A QR Code-Based Fuzzing Methodology to Identify Input Vulnerabilities in Mobile Apps_), proving that it is possible to remove any physical device and QR code constraint by using a virtualized environment for the testing process, that can be easily configured in a reproducible and automated way.

We are able to do it by running an Android Virtual Device (AVD), instead of using a real one, that is linked to a static video stream as a virtual webcam.
A comprehensive setup system is used to automatically install and configure the toolkit.