# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

# Install the project into `/app`
WORKDIR /app

RUN pip install mcp-server-sentry
# Place executables in the environment at the front of the path
ENV PATH="/app/.venv/bin:$PATH"

# when running the container, add --db-path and a bind mount to the host's db file
ENTRYPOINT ["python", "-m", "mcp_server_time"]
