= Device virtualization <device_virtualization>

In order to achieve a good level of scalability and efficient testing in a controlled environment, we opted for device virtualization, leveraging the capabilities of the Android emulator from the Software Development Kit (SDK).

The emulator easily integrates with a virtual camera, a feature that can be implemented through a simple command line switch. This allowed us to simulate scanning scenarios without the need for physical devices. Moreover, emulators do not require a graphical user interface (GUI), enabling tests to be performed on a server environment.

Each testing setup benefited from a clean Android environment, ensuring consistent and reliable results. This reproducibility is crucial for accurate testing and analysis

Virtualization also provides complete control over the Android operating system version and build. This flexibility allows to test across different Android versions and configurations.

Finally device virtualization eliminated the need for physical hardware, reducing logistical complexities and costs. Moreover, by no longer depending on the hardware potential differences in results attributable to varying hardware or vendor-specific configurations are eliminated.