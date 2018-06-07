# base image
FROM node:10.1.0

# set working directory
WORKDIR /Home/mike/test/hello

# add `/Home/mike/test/hello/node_modules/.bin` to $PATH
ENV PATH /Home/mike/test/hello/node_modules/.bin:$PATH

# add app
COPY . /Home/mike/test/hello/

EXPOSE 4200

# start app
CMD ng serve 
CMD ng e2e
