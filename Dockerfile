FROM risingstack/alpine:3.4-v6.9.4-4.2.0

MAINTAINER H87KG

ENV PORT 3001

EXPOSE 3001

COPY package.json package.json
RUN npm install

COPY . .

CMD ["npm", "run", "prod"]