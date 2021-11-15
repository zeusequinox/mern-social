FROM node:13.12.0
WORKDIR /backend
COPY package*.json ./
RUN npm install
COPY . ./
ENV PORT=5000
ENV NODE_ENV=development
ENV JWT_SECRET=mysecret
ENV MONGODB_URI=mongodb://mongodburi:27017/mernproject
EXPOSE 5000
CMD ["npm", "start"]
