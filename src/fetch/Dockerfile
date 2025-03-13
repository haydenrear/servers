# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim


WORKDIR /app

RUN pip install mcp-server-fetch

ENTRYPOINT ["python", "-m", "mcp_server_fetch"]
