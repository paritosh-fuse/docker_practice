FROM node:14.17.0-alpine3.13
COPY package*.json /app/
WORKDIR /app
RUN npm install
COPY . .    
EXPOSE 3000
# Exec Form - Efficient
CMD ["npm", "start"]



# Shell Form
# CMD npm start
# Cannot be overwritten as compared to CMD
# ENTRYPOINT [ "npm", "start" ]
# ADD can also accept url or a compressed file as src
# .dockerignore file can be created to ignore certain files/directories
# ENV env=dev url=url2
# Following 2 lines will prevent anyyone 
# from editing the src code in the container
# RUN addgroup app && adduser -S -G app app
# USER app