# Repo Basics
## Basic Folder Structure

-   **src Folder**: The source code folder! However, in languages that use headers (or if you have a framework for your application) don’t put those files in here.
-   **test Folder**: Unit tests, integration tests… go here.
-   **.config Folder**: It should local configuration related to setup on local machine.
-   **.build Folder**: This folder should contain all scripts related to build process (PowerShell, Docker compose…).
-   **dep Folder**: This is the directory where all your dependencies should be stored.
-   **doc Folder**: The documentation folder
-   **res Folder**: For all static resources in your project. For example, images.
-   **samples Folder**: Providing “Hello World” & Co code that supports the documentation.
-   **tools Folder**: Convenience directory for your use. Should contain scripts to automate tasks in the project, for example, build scripts, rename scripts. Usually contains .sh, .cmd files for example.

### **Repo folder structure

![](https://miro.medium.com/max/1000/1*Dzb-z46Ee03sKs8IYsxQ4Q.png)


## Git Special Files

-   **.gitignore:** List of blobs for git to ignore. Affects commands like git add and git clean. You may use gitignore.io to generate a clean and useful gitignore file.
-   **.gitattributes:** Let’s you define attributes on files (e.g., to change how files look in a diff).
-   **.mailmap:** Lets you tell git that duplicate names or emails in the history are actually the same person.
-   **.gitmodules:** Let’s you define submodules (subdirectories of your git repository which are checkouts of other git repositories).

## GitHub Special Files & Folders

-   **README File**: `README` or `README.txt` or `README.md` etc. is a file that answer the What, Why and How of the project. GitHub will recognize and automatically surface the `README` to repository visitors. Here is an [awesome list](https://github.com/matiassingers/awesome-readme) for more professional readme files.
-   **LICENSE File**: `LICENSE` or `LICENSE.txt` or `LICENSE.md` etc. is a file that explains the legal licensing, such as any rights, any restrictions, any regulations, etc. GitHub has developed a tool to help you to choose the right license:

----
Public: Yes
