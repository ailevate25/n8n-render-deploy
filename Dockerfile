# Use the official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD= ailevate
ENV WEBHOOK_TUNNEL_URL=https://your-n8n-service.onrender.com
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Expose the n8n port
EXPOSE 5678

# Start n8n
CMD ["npm", "run", "start"]
