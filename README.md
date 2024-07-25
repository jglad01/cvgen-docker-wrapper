
# CV Generator docker env.

Docker-compose environment for the CV Generator project (https://github.com/jglad01/cv-generator).

## Local setup

> [!NOTE]
> Before you start, make sure you have docker installed and running.

Clone the repository: ``` git clone https://github.com/jglad01/cvgen-docker-wrapper.git ```  

Change directory to newly cloned project: ``` cd cvgen-docker-wrapper ```  

Initialize and fetch the submodule: ``` git submodule update --init --recursive ```  

Make sure your wrapper and project are both on 'main'/'master' branches!  

Pull docker images: ```docker-compose pull```  

Build and start the containers: ```docker-compose up --build -d```  

Bash into the 'web' container: ```docker-compose run web bash```  

Install all the composer dependencies (make sure you are in the container!): ```composer install ```  

Exit the container bash ```exit```

Your project is up and running! Project will be available at http://localhost:8080 and the PHPMyAdmin will be available at http://localhost:8081  

If you are done, simply stop the containers: ```docker-compose down```

You might also want to remove volumes - useful when changing the *docker-compose.yml*: ```docker-compose down -v```