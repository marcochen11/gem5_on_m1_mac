FROM arm64v8/ubuntu:20.04
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive TZ=America/New_York apt-get -y install tzdata
RUN apt install -y build-essential git m4 scons zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    python3-dev python-is-python3 libboost-all-dev pkg-config