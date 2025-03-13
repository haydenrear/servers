# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

# Install the project into `/app`
WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN pip install mcp-server-git

# when running the container, add --db-path and a bind mount to the host's db file
ENTRYPOINT ["python", "-m", "mcp_server_git"]
