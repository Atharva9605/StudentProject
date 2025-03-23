# StudentProject

Hello , I am Atharva Tembhurnikar
This is  Django project with `home` and `contact` apps, which i had made for a client containerized with Docker and automated via Jenkins CI/CD.
You have the follwing steps to implement the project

## Setup
1. Clone: `git clone https://github.com/Atharva9605/StudentProject.git`
2. Virtual Env: `python -m venv env`, activate (`source env/bin/activate` or `env\Scripts\activate`), install (`pip install -r requirements.txt`).
3. Run: `python manage.py runserver`

## Docker
- Build: `docker build -t atharvanand24/studentproject:latest .`
- Run: `docker run -p 8000:8000 atharvanand24/studentproject:latest`

## Jenkins
- Pipeline in `Jenkinsfile` pulls from GitHub, builds Docker image, and pushes to Docker Hub.
