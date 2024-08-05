# I have chosen to illustrate what I would do to run the Hello-World App in a container.
# As a result this container is not built for local development.
# For local development purposes I would define a different Dockerfile, or use a `devcontainer`.
FROM python:3.12-slim

ENV APP_HOME=/app
ENV BUILT_ARTIFACTS_DIR=out

WORKDIR ${APP_HOME}

# We can use './' because we are setting the WORKDIR.
COPY ${BUILT_ARTIFACTS_DIR}/requirements.txt ./
COPY ${BUILT_ARTIFACTS_DIR}/src ./src

RUN pip install --no-cache-dir -r requirements.txt

# We could set an ENTRYPOINT, but I prefer to keep debuging options open for this exercise.
CMD ["python", "-m", "src.main"]
