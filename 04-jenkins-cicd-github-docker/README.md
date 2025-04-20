## Tools & Technologies
Jenkins, GitHub, Docker, Shell

## Description
A Jenkins pipeline that automatically pulls code from GitHub, builds a Docker image, and deploys it. Uses manual trigger instead of webhook for simplicity and full control.

## How to Run
1. Install Jenkins & Docker
2. Create a freestyle or pipeline job
3. Paste Jenkinsfile in the job config
4. Click "Build Now" to run manually after every commit