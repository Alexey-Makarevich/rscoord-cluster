# rscoord-cluster

Repository to confirm https://github.com/RediSearch/RediSearch/issues/2749

1. Dockerfile - build RSCoordinator-RediSearch in docker with redis:7.0.2 image and extract module-oss.so ;
2. docker-compose.yaml - start redis:7.0.2 cluster (3 master + 3 replicas) with loaded module-oss.so ;
3. Observe replicas crash. 

Full log attached - 20220624-deb-coord-702.log .

Environment:
 - clean Debian 11
 - docker 20.10.17
 - Redis image 7.0.2 (2e50d70ba706)
 - RediSearch version Git=master-75cf8b4c
