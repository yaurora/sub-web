FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app
# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN yarn install


# ---- Build ----
FROM dependencies AS build
COPY . /app
RUN yarn build


# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY --from=build /app/dist/ dist/

# serve app
EXPOSE 8080
CMD [ "http-server", "dist" ]
