= Introduction

== Related works

In recent years, the widespread adoption of Quick Response (QR) codes has introduced new challenges for the security and robustness of mobile applications.
QR codes, while they can be used to provide simple and immediate access to information, they also present potential security vulnerabilities that can be exploited by malicious actors, being them just another form of input for an application.
The paper "If You’re Scanning This, It’s Too Late! A QR Code-Based Fuzzing Methodology to Identify Input Vulnerabilities in Mobile Apps." by @carboni2023if made a first effort towards an automated fuzzing-based methodology able to address this problem.

Their proposal required the use of a real smartphone to run the tests on, which limited the possibility of automation and the reproducibility of the results, being them based on various factors that depends on the device, that also causes some hardware-related probems.

== Contributions

Our work builds upon the @carboni2023if research, which introduced a fuzzing framework designed to uncover QR code input vulnerabilities in mobile apps.
However, to improve the efficiency of the proposed approach with the aim of making the testing more scalable, we propose an alternative design.
Our proposal is based on the virtualization of the mobile phone, that allows for a more detailed configuration of the environment and potentially for the creation of multiple parallel testing sessions, without the need of large quantities of dedicated hardware.
Our framework also uses a virtual camera, linked to the virtual device, such that it is possible to virtually display QR codes on it, cutting out the hardware-related problems the previous proposal suffers of.

By virtualizing the testing infrastructure, we aim to overcome the limitations of traditional physical devices, providing researchers and developers with a more versatile platform for uncovering potential vulnerabilities in Android applications that provide QR code interactions.
The introduced virtualization not only improves the efficiency of the fuzzing process but also simplifies the adoption of this fuzzing methodology for new users.

== Report's structure

In the following sections of this report, we present the details of our virtualization approach.
We provide a comprehensive overview of the previous work (@previous_work), critically analyze the key aspects of its original design (@critical_aspects), and illustrate the details of our approach (@our_approach).
Subsequent sections discuss the technological and implementation details of webcam (@webcam_virtualization) and device virtualization (@device_virtualization), how the entire process is automated (@automation), results of the performed tests (@test_results) and conclude with insights into future possible actions that could further improve this field (@future_work).