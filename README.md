# DevOps Hello World

Welcome to "Hello World", an example CI/CD project on GitHub.

Good DevOps principles first. 

The code can run locally as well as in the CI/CD server, and it must be able to run in the same way both, locally, and in the remote.

# Requirements

- Have `python`, version 3.9 or higher, installed.
- Updated `pip` for your current python version.
```
python3 -m pip install --upgrade pip
```
- Install dependencies defined in `requirements_dev.txt`. 

> These are used only during development time, and are not bundled in the output artifacts`
 ```
 python3 -m pip install -r requirements_dev.txt
 ```

 - `Docker`. Make sure the docker daemon is running to build imanges and run containers.

That should be the minimum.

# Build the Code & Dependencies

```
./build/app-build.sh
```
# Build the app within a Container

Once you have successfully built the code & dependencies.

```
./build/docker-build-container.sh <CONTAINER_TAG>[:<VERSION>]
```

# Run the Code Locally

```
./build/app-run.sh
```

# Run the app container

```
./build/docker-run-container.sh <CONTAINER_TAG>[:<VERSION>]
```

# Lint

```
./build/app-lint.sh
```

# Test
```
./build/app-test.sh
```

# Clean up your local build

```
./build/cleanup.sh
```
