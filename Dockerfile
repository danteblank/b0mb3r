FROM python:3.7-slim-buster

WORKDIR /b0mb3r

# copy the content of the local src directory to the working directory
COPY ./ .

RUN pip install b0mb3r --force-reinstall

# install dependencies
RUN python ./setup.py build
RUN python ./setup.py install

CMD ["b0mb3r"]