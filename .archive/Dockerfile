FROM node
RUN npm install retypeapp --global
COPY ./ ./
WORKDIR /app
VOLUME /app
RUN ls -la
ENTRYPOINT ["retype"]