buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-microservice1-teststage
docker build -t localhost:5000/devopsly200-microservice1-teststage -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-microservice1-teststage-failed
docker build -t localhost:5000/devopsly200-microservice1-teststage-failed -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-microservice1-stagingstage
docker build -t localhost:5000/devopsly200-microservice1-stagingstage -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-microservice1-stagingstage-failed
docker build -t localhost:5000/devopsly200-microservice1-stagingstage-failed -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-microservice1-productionstage
docker build -t localhost:5000/devopsly200-microservice1-productionstage -f DockerfileProduction .

docker rmi -f localhost:5000/devopsly200-microservice1-productionstage-failed
docker build -t localhost:5000/devopsly200-microservice1-productionstage-failed -f DockerfileProduction .
