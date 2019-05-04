FROM node:12-slim

WORKDIR /app/website

EXPOSE 3000 35729
COPY ./docs /app/docs
COPY ./website /app/website
RUN npm install
RUN npm update docusaurus

CMD ["npm", "start"]
