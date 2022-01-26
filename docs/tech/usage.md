## Usage

### Requirements

#### Docker Desktop

To run Docker on a Windows machine you need [Docker Desktop](https://www.docker.com/products/docker-desktop) which is included in the free subscription plan [Docker Personal](https://www.docker.com/products/personal).

When using Docker Desktop on Windows machine you should use the [WSL 2 backend](https://docs.docker.com/desktop/windows/wsl/).

Prerequisites:

1. Install Windows 10, version 1903 or higher or Windows 11.
2. Enable WSL 2 feature on Windows. For detailed instructions, refer to the [Microsoft documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
3. Download and install the [Linux kernel update package](https://docs.microsoft.com/windows/wsl/wsl2-kernel).



#### Linux Distribution

[WSL2](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux) is the recommended backend for Docker Desktop on Windows but it also allows Linux commands to be run natively:

- Useful commands such as find, grep, sed and awk.
- Packages such as git, jq and csvkit.
- Entire shell scripts.

WSL is incredibly useful and brings the power of the Linux command line to Windows.

To gain the full benefits of WSL you will also need to install a Linux distribution on your Windows machine.

This task can be performed via the Microsoft store; Ubuntu is the distribution of choice for this project.



#### Linux Packages

Install git:

```
sudo apt-get update
sudo apt-get install git-all
```



### Application Installation

#### Clone the GitHub Repository

Clone the project repository to create a local copy:

```
git clone git@github.com:Logiqx/wsw-results.git
```

Note: The project repository contains numerous large files and was approximately 370MB in size on 26 Jan 2022.



#### Pull the Docker Base Images

Although Docker will automatically "pull" the required base images when building the application image it is preferable to pull them manually, prior to the build.

```
docker pull jupyter/base-notebook:notebook-6.4.6
docker pull python:3.10-slim-bullseye
```

Note: These are the Docker base images on 26 Jan 2022 but the version tags can be confirmed in the project [Dockerfile](https://docs.docker.com/engine/reference/builder/).



#### Build the Docker Image

The Docker image for the project is created by running a shell script from within the project root:

```
cd wsw-results
bin/docker_build.sh
```

Note: The build will convert the Jupyter Notebooks to regular Python scripts, build an image and run all of the unit tests.



### Refreshing the Reports

The reports can be refreshed by running a shell script from within the project root:

```
cd wsw-results
bin/results.sh
```

Note: It usually takes around 10 seconds in total to run all of the reports for 1998 to 2021.



### Publishing the Reports

Changes to the web pages can be identified using git commands from within the project root:

```
cd wsw-results
git status
git diff
```

The safest way to commit changes is to specifically "add" files prior to the "commit":

```
git add docs/results
git status
```

After reviewing the status, changes can be committed to git:

```
git commit -m "Meaningful message about the update" docs/results
git status
```

Pushing the local changes to GitHub will cause the website to automatically refresh:

```
git push
```

The deployment history can be [reviewed](https://github.com/Logiqx/wsw-results/deployments/activity_log?environment=github-pages) if there are any issues or delays.