#! /bin/bash

docker build -t dev-container-registry.ncr.gov-ntruss.com/openjre17:081401


docker login -u CONTAINER_REGISTRY_ACCESS -p CONTAINER_REGISTRY_SECRET https://dev-container-registry.ncr.gov-ntruss.com


docker tag dev-container-registry.ncr.gov-ntruss.com/openjre17:081401 dev-container-registry.ncr.gov-ntruss.com/openjre17:081402


# docker run -it dev-container-registry.ncr.gov-ntruss.com/openjre17:081402

# docker push dev-container-registry.ncr.gov-ntruss.com/openjre17:081402


docker run -it dev-container-registry.ncr.gov-ntruss.com/openjre17:081401

# 검증 
cd /usr/share/fontconfig
