# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

RUN pip install mcp-server-sentry

ENV PATH="/app/.venv/bin:$PATH"

# when running the container, add --db-path and a bind mount to the host's db file
ENTRYPOINT ["python", "-m", "mcp_server_sentry"]

