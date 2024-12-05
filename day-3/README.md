Why use terrraform modules?
- **Modularity:** - each module handles a specific piece of funtionality such as EC2 instance, databases enabling creating of small self contained components.
- **Reusability:** - Reusable code instead of writing similar code for projects
- **Scalability:** - As infrastracture growm newer modules can be creating, and th eocde can be cleanly maintained and organized
- **Security and encapsulation:** - Eg. creating a module launcing EC2 with predefined securoity groups and other security configs, ensuring consistency

### Task 1: - Creating EC2 instance using modules
We use modules to create the resources. 

The main.tf file in the root directory contains callls th emodule and passes the variables for the resources
