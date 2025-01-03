# Use the official code-server image as the base
FROM codercom/code-server:latest

# Switch to the root user
USER root

# Install additional dependencies as needed (optional)
RUN apt-get update && apt-get install -y \
    sudo \
    build-essential \
    curl \
    git \
    && apt-get clean

# Create the necessary directories
RUN mkdir -p /home/coder/code-server

# Set the working directory to /home/coder/code-server
WORKDIR /home/coder/code-server

# Set environment variables for code-server
ENV PASSWORD="Denisery"
ENV TZ="UTC"

# Expose the default port for code-server
EXPOSE 8080

# Optionally, copy custom configuration or extensions (if any)
# COPY extensions /home/coder/.local/share/code-server/extensions

# Start code-server as root
CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
