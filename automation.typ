= Automation <automation>

Automation plays a crucial role in our framework, since many different technologies need to be installed and, once installed, they have to be able to communicate with each other.
The original toolkit exclusively offered basic scripts for installing dependencies and initiating application testing, but its functionality was limited to Debian-based systems only.
These scripts, however, were constrained by numerous assumptions about the user's system.
Notably, the assumptions included the user's platform, the manual initiation of programs, and the user's familiarity with the tool's intricacies---specifically, the need to adjust many non-trivial parameters.

Our automation system is designed with the main goal of leading users toward a fully operational fuzzing environment and initiating the process seamlessly.
This is achieved by providing an intuitive setup that accomodates to users regardless of the operating system they are running.

== Managing dependencies

To ensure a seamless and user-friendly experience, we implemented a robust dependency management system.
Central to this system is the creation of a comprehensive `install` script, designed to orchestrate the installation of various foundamental dependencies for the fuzzing process.
This script loads individual setup scripts when needed, each tailored to install a specific program essential to the fuzzing environment.

Our approach goes beyond the traditional one-size-fits-all installation process.
Each component within the fuzzing framework is inherently aware of its dependencies and their installation status.
In the event of missing dependencies, rather than resulting in a system failure, the components prompt the user to install the necessary prerequisites.

This dependency check mechanism is implemented in a modular and reusable fashion.
By adhering to a modular design, our system ensures adaptability to evolving dependencies, making it straightforward to incorporate new programs or updates.
The reusability of the dependency check modules enhances maintainability, enabling developers to apply the same mechanism across different components within the fuzzing framework.

In summary, our dependency management system, lead by the `install` script and supported by modular and reusable dependency checks, provides a streamlined and adaptive approach to handling the various software requirements of the fuzzing process.
This user-centric design minimizes potential roadblocks, allowing researchers to focus on the core aspects of their work rather than grappling with intricate installation procedures.

== Managing components: simplifying complexity with wrapper scripts

In the intricate landscape of our fuzzing framework, we developed a set of wrapper scripts to simplify user interaction with underlying tools.
These scripts not only offer a simplified interface but also handle the intricacies of launching and managing multiple components, critical to the fuzzing process.
In this section, we illustrate and showcase these scripts, providing insights into their purpose and internal mechanisms:

=== `stream`: orchestrating video stream creation

The `stream` script serves as an orchestrator for v4l2loopback and ffmpeg, ensuring the seamless creation of a video stream from a QR-encoded PNG to a virtual video device (`/dev/videoN`).
This process involves intricacies in managing these tools, which are inherently complex for manual usage.
By providing a simplified interface, `stream` enhances accessibility while managing the correct interaction between v4l2loopback and ffmpeg.

=== `launch-emulator`: streamlining emulator initialization

For virtual camera integration, the `launch-emulator` script acts as a streamlined interface to the Android emulator.
It verifies the availability and status of the specified virtual camera device (`/dev/videoN`) and performs necessary checks to ensure its readiness.
This script simplifies emulator launch procedures, making the process user-friendly while ensuring the proper configuration of virtual camera interfaces.

=== `apk-install`: automating application deployment

This script simplifies the tedious process of application installation, the `apk-install` script automates the download and installation of application packages (APKs).
This script ensures that the target applications are readily available for testing, minimizing manual intervention and simplifying the preparation phase of the fuzzing process.

=== `qrfuzz`: main orchestrator of the system

Core of the fuzzing framework, the `qrfuzz` script is the main orchestrator.
This script not only calls upon the previously mentioned `stream` and `launch-emulator` scripts, but also manages their lifecycle as background devices.
Furthermore, `qrfuzz` initiates the Appium server, a crucial element for interacting with applications within the emulator.
It plays a crucial role by starting the entire system and smoothly transitioning into the fuzzing process.

Overall, these wrapper scripts collectively contribute to a more user-friendly and automated fuzzing environment.
They encapsulate the complexities of underlying tools, manage component lifecycles, and simplify interactions, empowering researchers and developers to focus on the core aspects of their work without being distracted by complicated technical details.

== Unified test automation management

Previously, executing the tests required separate actions:
- Launching the Appium server in one terminal.
- Initializing the QR Code generator in another terminal.
- Starting the QR Code fuzzer in yet another terminal.

With our automation system, these three components are all managed by the same script and their logs are displayed on the same terminal. This automation process simplifies the test execution, making it more convenient and efficient for users.

