FROM docker.io/joepreludian/python-poetry:latest

WORKDIR /work

COPY create_setup.py /

CMD ["/usr/local/bin/python", "/create_setup.py"]

