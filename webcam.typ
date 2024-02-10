= Webcam virtualization <webcam_virtualization>

In order to decide how to virtualize the camera, we considered several tools:

== v4l2loopback

v4l2loopback @v4l2loopback is a lightweight kernel module that provides a simple way to create virtual video devices.
It integrates directly with the Linux Video4Linux2 (v4l2) subsystem, moreover it is open source, well known for its reliability and has already been used in several applications requiring virtual camera functionality.

Using v4l2loopback presents some drawbacks, in fact configuration and setup might require some familiarity with Linux kernel modules and system administration, making it less user-friendly for novice users. There may be occasional compatibility issues with specific software or older kernel versions. Finally it is only available on Linux and it does not provide advanced features such as scene composition and effects.

== OBS
OBS (Open Broadcaster Software) @OBS is a free and open-source app for screencasting and live streaming.
OBS offers a wide range of features including scene composition, overlays, transitions, and effects, making it suitable for creating complex virtual camera setups.
It is available for Windows, macOS, and Linux and with an intuitive interface and extensive documentation, it is relatively easy to use for new users.

On the other hand OBS is difficult to be used entirely from the command line and even if it is user-friendly, the extensive feature set of the tool can be overwhelming for users looking for simple virtual camera functionality.

== GStreamer

GStreamer @GStreamer is a pipeline-based multimedia framework that links together a wide variety of media processing systems to complete complex workflows.
GStreamer offers extensive flexibility and customization options and it is available for Windows, macOS, and Linux.
Despite that GStreamer's extensive feature set and complex pipeline syntax may present a steep learning curve for users unfamiliar with multimedia frameworks and while GStreamer has extensive documentation, finding specific information may be challenging due to the framework's complexity.

== Selected tool

After carefully considering the advantages and drawbacks outlined above, we decided to use v4l2loopback for our project.
Our decision was based from the project's main objective of improving the scalability of QR fuzzing. Relying on a tool that does not provide a good support for the usage from command line like OBS was not an option because it would have significantly limited the whole automation process. We also decided not to go for GStreamer because the complex set of options offered by the tool was not necessary for our purposes.

In the end v4l2loopback was the most appropriate solution for our project. Although configuring the kernel module required an initial investment of time, the process was manageable and well-documented. Moreover, v4l2loopback's straightforward interface aligned with our objectives, allowing us to focus on optimizing the automation process without the distractions of extraneous features.
Furthermore, the absence of advanced video editing features within v4l2loopback was not a limit for us. Our only requirement of resizing QR codes could be achieved without the need for additional effects or modifications.
