FROM python:3.8-alpine

WORKDIR /b0mb3r

# copy the content of the local src directory to the working directory
COPY ./ .

# install dependencies
RUN python ./setup.py build
RUN python ./setup.py install

CMD ["b0mb3r"]