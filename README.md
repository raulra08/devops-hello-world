# DevOps Hello World

Welcome to "Hello World", an example CI/CD project on GitHub.

Good DevOps principles first. 

The code can run locally as well as in the CI/CD server, and it must be able to run in the same way both, locally, and the remote.

# Requirements
 ```
 python 3.9+
 Docker
 ```

# Build the Code & Dependencies

```
./build/app-build.sh
```
# Build the app within a Container

```
./build/docker-build-container.sh <CONTAINER_TAG>
```

# Run the Code Locally

```
./build/app-run.sh
```

# Run the app container

```
./build/docker-run-container.sh <CONTAINER_TAG>
```

# Clean Up Locally

```
./build/cleanup.sh
```
