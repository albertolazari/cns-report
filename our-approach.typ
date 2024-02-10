= Our Approach <our_approach>

We managed to solve the critical aspects described in the previous section by implementing several key solutions.

== Virtualizing the device
Instead of relying on physical smartphones, we employ virtualization techniques. This eliminates the need for physical devices and monitors, thus improving scalability.

== Virtualizing the camera
By virtualizing the camera, we create simulated camera interfaces within the testing environment. This allows us to present QR codes for scanning without the limitations imposed by physical camera hardware.

== Rewriting the QR Code Generator
We rewrote the QR Code Generator component in Javascript in order to avoid comunication through the file system with the QR Code Fuzzer which was already written in Javascript.

== Automation
Automation plays a crucial role in the testing process. We implemented several scripts for initiating the whole environment, virtualizing the camera and running the tests in a completely automated way.

== Workflow improvement
The workflow of the whole system (@new_workflow) has been improved, we can identify five key phases in it:

1. The QR Code Fuzzer component takes a string as input from a pool of inputs. Using this input string, the QR Code Fuzzer generates a QR code corresponding to the string. Once generated, the QR code is saved in the file system as an image file.
2. The QR code image file saved in the file system is displayed in a virtual camera.
3. QR Code Fuzzer sends a scan request to the Android emulator through the Appium server.
4. The Android emulator receives the scan request from the Appium server, it then accesses the virtual camera where the QR code is displayed and scans the QR code.
5. Once the QR code is successfully scanned by the Android emulator, it generates a scan response which contains log informations and a screenshot. Also in this phase, the communication between the Android emulator and the QR Code Fuzzer occurs through the Appium server.

#figure(
  image("images/architecture.png"),
  caption: [New architecture]
) <new_workflow>