# rscoord-cluster

Repository to confirm https://github.com/RediSearch/RediSearch/issues/2749

1. Dockerfile - build RSCoordinator-RediSearch in docker with redis:7.0.2 image and extract module-oss.so ;
2. docker-compose.yaml - start redis:7.0.2 cluster (3 master + 3 replicas) with loaded module-oss.so ;
3. Observe replicas crash. 

Full log attached - 20220624-deb-coord-702.log .
