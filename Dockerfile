FROM n8nio/n8n

USER root
RUN mkdir -p /home/node/.n8n && \
    touch /home/node/.n8n/config && \
    chown -R node:node /home/node/.n8n && \
    chmod 600 /home/node/.n8n/config
USER node

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Add Redis connection retry settings
ENV N8N_REDIS_HOST=redis
ENV N8N_REDIS_PORT=6379
ENV N8N_REDIS_CONNECTION_TIMEOUT=20000
ENV N8N_REDIS_RETRY_STRATEGY_ATTEMPTS=20
