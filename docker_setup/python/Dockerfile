FROM python:3.8-slim

RUN pip install --upgrade pip
RUN pip install jupyterlab
RUN pip install mysql-connector-python
RUN python3 -m pip install mariadb_kernel
RUN python3 -m mariadb_kernel.install
RUN pip install pandasql
RUN pip install pandas
RUN pip install matplotlib

WORKDIR /var/lib/jupyter