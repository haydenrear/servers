# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim AS uv

COPY ./ .

# Install the project into `/app`
WORKDIR /app

# Enable bytecode compilation
ENV UV_COMPILE_BYTECODE=1


# Install the project's dependencies using the lockfile and settings
RUN uv sync --frozen --no-install-project --no-dev --no-editable

# Then, add the rest of the project source code and install it
# Installing separately from its dependencies allows optimal layer caching
RUN uv sync --frozen --no-dev --no-editable

# Place executables in the environment at the front of the path
ENV PATH="/app/.venv/bin:$PATH"

# when running the container, add --db-path and a bind mount to the host's db file
ENTRYPOINT ["mcp-server-sqlite"]

