# RsaCtfTool
Docker file for Ganapatis great RSA tools

Clone repository https://github.com/Ganapati/RsaCtfTool
cd into that dir

Copy Dockerfile into the directory

## Build:
docker build -t rsacrack .

## Run
docker run -it rsacrack

docker run -it -v $(pwd)/:/data --entrypoint "/bin/bash" rsacrack

#to forcibly get into bash, override entrypoint:
docker run -i -t --entrypoint "/bin/bash" rsacrack
