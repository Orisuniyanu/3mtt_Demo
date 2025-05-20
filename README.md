# 🔐 AI-Powered DevSecOps Pipeline with Jenkins, Docker & Snyk

## Introduction
Hello everyone, my name is Iyanu Odunayo

Fellow ID: FE/23/30026374.

For this 3MTT project, I chose the category “AI-Powered Solutions” under a DevOps-focused build.
This project demonstrates a secure DevOps pipeline using open-source tools like **Docker**, **Jenkins**, and **Snyk**. The focus is on automating the build and security scan of a Docker image with AI-powered vulnerability detection using **Snyk**.


## Problem Statement:
Many developers build and deploy applications without knowing if their Docker images contain critical security flaws.
My goal was to create a solution that automates vulnerability detection using AI tools, right inside the CI/CD pipeline.

Modern software deployment demands speed and security. This project brings both together by:

- Building a Docker image of an application.
- Automating the CI/CD pipeline with Jenkins.
- Integrating **Snyk**, an AI-driven security tool, to scan the image for vulnerabilities.


## My Build – Tools Used:
- **GitHub** – to host the project code

- **Docker** – to build and containerize the app

- **AI-Powered Security** – Snyk analyzes the image for security risks and provides suggestions.

- **Jenkins** – to automate the build and scanning process

## Jenkins Pipeline Integration:
I set up a Jenkins pipeline that does the following:

- Clones the latest version of the project from GitHub

- Builds a Docker image

- Runs Snyk CLI to scan the image for vulnerabilities

- Displays results on the Jenkins dashboard

- This pipeline is fully automated — every time I push to GitHub, Jenkins picks it up, builds the image, and runs Snyk to ensure it’s secure.

## My Solution:
- I built a Docker image for a sample web application, and integrated Snyk — an AI-powered tool — to automatically scan the image for known vulnerabilities.

- The build was containerized using Docker and hosted on GitHub at:
🔗 https://github.com/Orisuniyanu/3mtt_Demo.git

- I then ran snyk test on the Docker image. Snyk analyzed the dependencies and flagged critical issues, with suggestions on how to fix them. This is where AI plays a major role, helping developers secure their applications quickly and intelligently.

## How AI Was Used:
- Snyk’s AI engine scans code and containers to identify known vulnerabilities.

- It recommends remediations based on industry data, allowing for smart, automated security decisions.

## Why It Matters:
- Integrating AI tools like Snyk in DevOps workflows helps shift security left — making builds safer before deployment, not after.

- This project shows how even a small build can benefit from AI-powered insights, promoting secure-by-default development.
