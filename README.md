# gem5_on_m1_mac

This file shows how to run gem5 on M1 Mac inside a docker container

1. install docker desktop from: https://www.docker.com/products/docker-desktop/

2. get the lastest gem5 repo:
    ```
    git clone https://gem5.googlesource.com/public/gem5
    ```

3. create docker image based on the Dockerfile in this repo:
    - copy the Dockerfile to the same path of the gem5 folder, your file tree should be like:
        ```
        - <some dir>
            - Dockerfile
            - gem5
        ```
    - create docker imager
    ```
    docker build -t gem5_docker .
    ```

4. run docker container
    ```
    docker run -u root --volume ${PWD}/gem5:/gem5 --rm -it gem5_docker
    ```
    your gem5 repo will be located at ```/gem5``` of your container
