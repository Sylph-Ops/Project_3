FROM 	node:16-alpine3.11
WORKDIR /myapp
ENV	PORT 3000
COPY 	app.js /myapp
RUN	npm init --yes && \
	npm install express --save 
EXPOSE	3000
CMD 	["node", "app.js"]

