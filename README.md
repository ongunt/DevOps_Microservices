[![CircleCI](https://circleci.com/gh/ongunt/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/ongunt/DevOps_Microservices/tree/master)

## Project Overview



You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.
```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* To install the dependencies: `make install`
* To lint: 'make lint`
### Running `app.py`


### Prediction
1. To build container first: `./run_docker.sh`
2. To make a prediction: `./make_prediction.sh`
3. To upload to Docker hub: `./upload_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker 
* Setup and Configure Kubernetes by installing and starting minikube
* Create Flask app in Container
* Run via kubectl


## Files

| Files                | Content                                                                                                                   |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| app.py               | Flask application                                                                                                         | 
| Dockerfile           | Dockerfile for deploying the application                                                                                  | 
| make_predication.sh  | Bash script for testing the model                                                                                         |
| Makefile             | Makefile for installing python requirements, linting the Dockerfile with hadolint and linting the python script           |
| requirements.txt     | List of python libraries used by the application                                                                          | 
| run_docker.sh        | Bash script for launching the docker image                                                                                |
| run_kubernetes.sh    | Bash script for deploying the docker image from dockerhub to a kubernetes cluster                                         |
| upload_docker.sh     | Bash script for pushing the built docker image to dockerhub                                                               |
| .circleci/config.yml | Config file for circleci build service                                                                                    |
| docker_out.txt       | Task 3                                                                                                                    |
| kubernetes_out.txt   | Task 6                                                                                                                    |

