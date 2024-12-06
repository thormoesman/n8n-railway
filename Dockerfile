FROM n8nio/n8n

USER root
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod 600 /home/node/.n8n/config || true
USER node

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
