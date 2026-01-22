# FIB-TFG

BA20 BSP layer for FIDES Electrònica **+** Yocto compilation Docker **+** QT SDK Docker **+** GitLab CI/CD Runners

---

## Overview

This project provides a Bitbake Software Package (BSP) layer for FIDES Electrònica's BA20 system, along with a Yocto build system using Docker. It also includes setup configurations for QT Software Development Kit (SDK) and GitLab CI/CD runners to streamline development and deployment processes.

BitBake is the primary language used in this repository, accounting for 100% of the codebase.

---

## Features

- **BA20 BSP Layer**: Custom board support package (BSP) for FIDES Electrònica's BA20 system.
- **Yocto Integration**: Tools and configurations for utilizing the Yocto Project build system within a Docker container environment.
- **QT SDK Docker**: Pre-built Docker images for QT application development.
- **CI/CD Compatibility**: Configurations for GitLab CI/CD automated pipelines.

---

## Prerequisites

1. **Docker**: Ensure Docker is installed on your system for build and SDK usage.
2. **GitLab CI/CD Setup**: To use GitLab runners, ensure you have a GitLab repository with enabled CI/CD pipelines.

---

## Usage

1. Use the provided Yocto files to build your BSP layer for FIDES Electrònica's BA20.
2. Use the Dockerized QT SDK to develop and deploy applications efficiently.
3. Set up the GitLab CI/CD runners for a seamless continuous integration and deployment workflow.

---

## Technologies Used

- **BitBake**: The entire repository utilizes BitBake scripts (100%) for building and configuring the BSP and Yocto layers.
- **Docker**: Provides containerization for the Yocto build system and QT SDK.
- **GitLab CI/CD**: Pipelines for continuous integration and deployment.

