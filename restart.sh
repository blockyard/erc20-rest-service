
docker stop erc20-svc
docker rm erc20-svc
docker pull qinlikang/erc20-svc
docker run -d -p 80:8080 --name erc20-svc qinlikang/erc20-svc

