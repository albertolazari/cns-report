= Future work <future_work>

Future work should move along two main axes: the improvement of the current project and the parallelization of fuzzing.

== Improving the project
The actual project can be improved in several different ways.
Firstly, expanding the project with additional inspectors would significantly broaden its applicability, enabling it to fuzz a more extensive range of applications.
Furthermore, introducing features such as the possibility to utilize a specific subset of dictionaries and adjust logging levels through command flags would enhance the flexibility and customization options for users.
Additionally, future development efforts could focus on streamlining the process of downloading the required APKs, therefore streamlining the setup process and enhancing the overall automation.

== Parallelizing the fuzzing
Leveraging the abstraction and automation capabilities already integrated into the system, researchers can now readily replicate experiments within containerized environments.
This opens the way for creating Docker images of the system, facilitating seamless testing within controlled, deterministic environments.
This approach allows to conduct parallel tests through orchestrating services and platforms like Ansible, enabling more efficient and scalable fuzz testing.