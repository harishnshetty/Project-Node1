# Use lightweight Nginx base image
FROM nginx:alpine

# Copy built React app (from pipeline) into Nginx public folder
COPY dist/ /usr/share/nginx/html

# Optional: custom Nginx config for SPA routing
#COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
