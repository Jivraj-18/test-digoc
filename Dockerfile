
# Typically, you would use `COPY . .` to copy files from the host machine,
# but here we're just using a simple script.
FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
# Set working directory
WORKDIR /app
COPY index.py /app


# Run the script
CMD ["uv", "run","index.py"]
