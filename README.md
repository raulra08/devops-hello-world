# DevOps Hello World

Welcome to "Hello World", an example CI/CD project on GitHub.

Good DevOps principles first. 

The code can run locally as well as in the CI/CD server, and it must be able to run in the same way both, locally, and the remote.

# Build the Code & Dependencies

```
./build/app-build.sh
```
# Build the app within a Container

```
./build/docker-build-container.sh
```

# Run the Code Locally

```
./build/app-run.sh
```

# Run the app container

```
./build/docker-run-container.sh
```

# Clean Up

```
./build/cleanup.sh
```