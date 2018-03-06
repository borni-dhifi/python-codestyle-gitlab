FROM ubuntu:16.04

MAINTAINER Borni DHIFI <dhifi.borni@gmail.com>

RUN apt-get update \
    && apt-get install python-pip  pylint -y 
    
RUN pip install pycodestyle pydocstyle flake8 hacking

RUN pip install --upgrade git+https://github.com/oca/pylint-odoo.git
