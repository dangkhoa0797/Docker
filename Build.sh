DOCKER_BUILDKIT=1 docker build -f /root/khoa/Dockerfile -t khoa0797/nginx-ubuntu:latest .

docker build -t khoa0797/nginx-ubuntu:latest -t khoa0797/nginx-ubuntu:1.0.0 .

docker login -u "khoa0797" -p "dangkhoabro9x" docker.io

docker push khoa0797/nginx-ubuntu:latest

docker cp name-container:/etc/nginx .
docker cp namefile  name-container:/media