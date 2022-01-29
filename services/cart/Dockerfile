FROM node:13
RUN curl -o- -L https://yarnpkg.com/install.sh | bash & yarn global add prisma1
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .