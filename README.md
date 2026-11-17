Project title:news_management_system

description: a dynamic web application built with PHP and MySQL for managing news articles, categories.the application is containerized using Docker

Tech stack:
Frontend:html,css,bootstrap RTL

Backend: PHP8.2 (Apache)

Database:MySQL 8.0

Containerization: Docker and Docker Compose

How to build and run :
    before starting make sure you have docker desktop running 
    1-Clone the repository:https://github.com/marwadewfefefd/news_management_system

    2-open the project folder:
        cd news_management_system

    3-to build and start the application using docker:
        docker compose up -d --build

    4-open the application on your browser
        http://localhost:8080/

How to stop the container and clean up
    docker compose down

how to stop containers and clean up all volumes and networks
    docker compose down -v

Configuration notes
    -Web Port:8080 mapped tocontainers port 80 
    -Database Port:3306 (Host & Container)
    -Environment Variables:
        -MYSQL_ROOT_PASSWORD:rootpassword
        -MYSQL_DATABASE: news

How tO test the application:
    Open your web browser and go to:http://localhost:8080/
    Create an Account: Navigate to http://localhost:8080/signup.php and submit a new user registration
    login: Enter your registered data at http://localhost:8080/login.php
    ensure you are successfully redirected to http://localhost:8080/dashboard.php upon login to view the dashboard interface