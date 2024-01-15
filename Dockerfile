# Production Dockerfile
# Use the file to build the application

FROM node:current

LABEL org.opencontainers.image.title="Docker Volumen Example Frontend" \
      org.opencontainers.image.description="Simple react.js frontend application" \
      org.opencontainers.image.authors="@laurino108"

# Setting up work dir
WORKDIR /app/

# Copying files into application folder
COPY . .

# Install dependencies
RUN npm install

# Frontend Port
EXPOSE 3000

# Starting Application
CMD ["npm", "start"]

