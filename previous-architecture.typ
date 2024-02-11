= Overview of previous work <previous_work>
Thestarting point of our project is _QRFuzz_ by @QRFuzz, which is made of the following components:
- *PC Monitor*: A phisical monitor in which the generated QRs are displayed.
- *Smartphone*: A phisical smartphone in which the app under test is run.
- *Appium server*: An Appium Server is an open-source automation server that facilitates the automated testing of mobile applications across different platforms, including iOS, Android, and Windows.
  It acts as a bridge between test code and the mobile device or emulator, allowing to interact with the application under test programmatically.
- *QR Code Fuzzer*: The main element of the system that is responsible for coordinating and initiating actions for both the QR Code Generator and the Appium Server, along with managing the entire testing process. The fuzzing operation itself involves a series of steps repeated for each QR code under examination. These steps include navigating to the designated scanning page within the application, scanning the QR code, verifying if the app's normal behavior has been disrupted, and logging the results of the iteration as potential indications of a vulnerability.

- *QR Code Generator*: The QR Code Generator is another crucial component of QRFuzz. Its primary function is to dynamically produce QR codes using a predefined dictionary and display them on the screen. This generator is capable of creating both standard, general-purpose QR codes and custom codes based on an application-specific template.

#v(2em)

== Workflow

The workflow of the system (@old_workflow) can be summarized by the following steps:
1. The QR code displayed on the monitor is scanned by the smartphone.
2. The smartphone sends a scan responce to the QR Code Fuzzer through the Appium server
3. The QR Code Fuzzer notifies a QR change request to the QR Code Generator by updating a shared JSON file.
4. The QR Code Generator generates a new QR and displays it on the monitor.
5. The QR Code Generator notifies the update to the QR Code Fuzzer by changing the JSON file.
6. The QR Code Fuzzer sends a scan request to the smartphone via Appium server.

#figure(
  image("images/qr-fuzz-old-architecture.png"),
  caption: [Old architecture]
) <old_workflow>