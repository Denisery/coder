# Use the official code-server image as the base
FROM codercom/code-server:latest

# Set environment variables for code-server
ENV PASSWORD="Denisery"
ENV TZ="UTC"

# Expose the default port for code-server
EXPOSE 8080

# Start code-server
CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
