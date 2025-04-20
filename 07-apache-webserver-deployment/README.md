## Tools & Technologies
Apache, Docker

## Description
A lightweight Apache web server containerized using Docker. This serves a static HTML landing page using the default port 80.

## How to Run
1. Run: `docker build -t apache-server .`
2. Run: `docker run -d -p 8080:80 apache-server`
3. Open browser: http://localhost:8080