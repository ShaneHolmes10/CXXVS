# CXXWorkflowQuest

## Description

This project seeks to create a build environment for developing C++ projects in vscode. The core objectives are as follows.

- Generate Documentation
- Generate a UML class diagram
- Utilize debug stepping for tests and main
- Have test framwork

This project will autogenerate all of the appropriate files and folders to faciliate deveopment and then install all the necessary libraries automatically.

## USEME

> **_NOTE:_** When using this system for the first time it's imperative that you change the name of the project in the root cmake from
> CXXWorkflowQuest to what ever your projects name is. Then reload the project by doing ctrl+shift+p and type in and run reload.

To use this program you would need to navigate to the CMake extension and then in the project outline press clean and then build.
This will build the executable.

The executable will be located in the build/bin folder. If your working directory is the root of the project folder then to execute simply run...

```sh
./build/bin/main
```

### Make Commands

#### hardclean

There are also some make commands

Some times there may be an issue with compilation and building due to cashing issues. To aliviate this you would notmally want to just delete the build folder, create a new build folder and then call this in the build fodler...

```sh
cmake ..
```

To reinitialize cmake in the build folder.

To streamline this I've allocated this task to a make command simply call...

```sh
make hardclean
```

To perform what was stated above.

#### uml

We will also want to auto generate the UML to do this just call

```sh
make uml
```

#### doc

We will also want to auto generate the docs to do this just call

```sh
make doc
```

#### all

Because we normally want to generate the uml and the docs at the same time we can call...

```sh
make all
```

This will generate the uml and the docs in one go. This command should already be run during building. So you wouln't
normally need to call this.

## Under the hood

### Project Structure

The project is structured with the following folders.

- src
- test
- libraries
- file
- build
- .vscode
- diagrams
- html

#### src

This folder contains all the src code for the project, the cpp, hpp and h files. It also contains a CMakeLists.txt.

#### test

This folder contains all the tests for testing the src files.

#### libraries

This folder contains all the library files we want to use in the code.

#### file

This folder would contain all the external files, like jsons, images, and other files the program may need

#### build

This folder contains the binary files for all the executables for the program, like the main file executables, and the test
executables along with some other things.

#### .vscode

This folder contains the vscode configuration files like the launch.json, which instructed vscode how to launch the project

#### diagrams

This folder contains the class UML diagram that's automatically generated.

#### html

This folder contains the doxygen documentation specifically the index.html file that shows the program documentation in a
website form.

### Cmake

Under the hood we're using a CMake build system to coordinate building the project. We're using the CMake and CMake Tools
extension in vscode so vscode can interact with everything.
