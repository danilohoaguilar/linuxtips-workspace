# Using lates Ubuntu Image
FROM node:lts-alpine3.24

# Configuring a Work Directory, is it not mandatory, but it helps to keeps 
# files organized. In thsi example, we use node default fodler

WORKDIR /usr/src/app

# Set the Environment Variable as production for NodeJS
ENV NODE_ENV production

# Using the port 3000 
EXPOSE 3000

# COPY the files to the image
# COPY . .

# COPY only the files for package*.json to speed up the build time
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Setting the user that will run this node is not root
# In the image there is a user named "node"
USER node

# Copying just the ./src folder that will be required to run the API
COPY --chown=node:node ./src .

# Run the api
# CMD ["npm", "run", "dev"]

# Run the api as production
CMD ["node", "index.js"]
