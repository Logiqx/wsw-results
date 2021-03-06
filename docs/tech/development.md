## Development

### Requirements

#### Docker Daemon

The first pre-requisite for development is the [Docker](https://www.docker.com/) daemon; e.g. Docker Desktop (Windows) or Docker CE (Linux).

The installation and configuration of the Docker daemon is detailed for Windows and Ubuntu in the general usage [document](usage.md).



#### Docker Base Images

The Docker image for wsw-results utilizes the image layers of sse-results; i.e. generic application features and python libraries.

Although Docker will automatically "pull" the required image layers when building the application image it is preferable to pull them manually, prior to the build.

```shell
$ docker pull jupyter/base-notebook:notebook-6.4.6
$ docker pull logiqx/sse-results:1.0.0
```

Note: These are the appropriate Docker images on 20 Feb 2022 but the version tags can be confirmed in the project [Dockerfile](https://docs.docker.com/engine/reference/builder/).



#### Docker Compose

In addition to the Docker daemon you need [Docker Compose](https://docs.docker.com/compose/) to do any further development.

n.b. Docker Compose is automatically installed with Docker Desktop (Windows) but will need installing on Linux (e.g. Ubuntu).

The Docker documentation describes the [installation](https://docs.docker.com/compose/install/) of Docker Compose on Linux but here are the crucial commands:

```shell
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

$ sudo chmod +x /usr/local/bin/docker-compose

$ docker-compose --version
```



#### Compose Project

The WSW project makes use of a generic Docker Compose project which is available on GitHub.

The Docker Compose project includes [Jupyter](https://jupyter.org/) and [MariaDB](https://mariadb.org/) but this project only requires the Jupyter service.

Be sure to clone the generic compose project to the same directory that the wsw-results project was previously cloned:

```shell
$ git clone git@github.com:Logiqx/dev-compose.git
```

If the git command fails, you may not have set up a password protected SSH key. You may therefore prefer to use HTTPS instead:

```shell
$ git clone https://github.com/Logiqx/dev-compose.git
```

The final step is to build the image layers for the customised Jupyter notebook. This includes a variety of 3rd party libraries, etc.

```shell
$ cd dev-compose
$ docker-compose --profile=notebook build
```

n.b. This process may take several minutes to complete but it is only a one-off activity.



### Startup

#### Jupyter Container

To start the required Jupyter notebook container (when it is not already running), use the following command(s):

```shell
$ docker-compose --profile=notebook up -d
$ docker ps
```

n.b. Failure to specify the profile will result in MariaDB being unnecessarily pulled from Docker Hub and started up.



#### Authorisation

When the Jupyter notebook container first starts up it will require authentication from a web browser.

The easiest way to achieve this is to view the Docker logs and then open the URL that contains the authorisation token.

```shell
$ docker logs wca_notebook_1

[I 06:59:08.965 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 06:59:08.966 NotebookApp] Jupyter Notebook 6.4.6 is running at:
[I 06:59:08.966 NotebookApp] http://616c3c242aef:8888/?token=2799040bc3294f25c5f8f7d1f5aa447c01b03e92b31648d0
[I 06:59:08.966 NotebookApp]  or http://127.0.0.1:8888/?token=2799040bc3294f25c5f8f7d1f5aa447c01b03e92b31648d0
[I 06:59:08.966 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 06:59:08.999 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-7-open.html
    Or copy and paste one of these URLs:
        http://616c3c242aef:8888/?token=2799040bc3294f25c5f8f7d1f5aa447c01b03e92b31648d0
     or http://127.0.0.1:8888/?token=2799040bc3294f25c5f8f7d1f5aa447c01b03e92b31648d0
```

Open the URL containing 127.0.0.1, either by clicking on it whilst holding down the ctrl key or via copy + paste.



### Development

#### General

Development is via the Jupyter interface, accessible via http://127.0.0.1:8888/

The Jupyter container uses a bind mount to the parent of the project folder. Project code is accessible via `work/wsw-results/python`.

Individual Python modules can be loaded, modified and tested via the Jupyter interface.



#### Modules

The WSW application is composed of a number of modules, most of which contain a single Python class.

Each module also contains a number of unit tests so the class can be modified and tested in isolation, within the Jupyter frontend.

All of the project modules will need to be pre-built before they can be imported by other notebooks. There is a script for this purpose:

```shell
$ bin/py_build.sh
```

n.b. After modifications to an individual module, re-running this script will be necessary prior to any work on other modules that use it.



#### Build

The Docker image for the project is created by running a shell script from within the project root:

```shell
$ cd wsw-results
$ bin/docker_build.sh
```

The build script will convert the Jupyter Notebooks to regular Python scripts, build a Docker image, run all of the unit tests and run the actual reports. If all of these steps are successful then the Docker image will be tagged as the "latest" and will be available for re-use.

After a successful build the reports can subsequently be run by running `bin/reports.sh`.



#### Summary

This document has only provided details of how to start up a Jupyter environment, access the code, build and test the application.

You will have to find your own way around the code from this point onwards. After some exploration it should be apparent how it works.



#### Future

There is a vague intention to migrate this project from Jupyter to [Visual Studio Code](https://code.visualstudio.com/) in the future.


