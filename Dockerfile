ARG VERSION=14.1.0
FROM ansible/awx:${VERSION}

USER root

ENV PIP_VENV=/var/lib/awx/venv/ansible/bin/pip3.6
ENV PYTHON_VENV=/var/lib/awx/venv/ansible/bin/python3.6

RUN $PIP_VENV install --upgrade pip && \
    $PIP_VENV install --no-cache-dir junos-eznc jxmlease && \
    $PIP_VENV install --no-cache-dir absl-py ipaddress capirca && \
    $PIP_VENV install --no-cache-dir funcsigs pybatfish && \
    $PIP_VENV install --no-cache-dir napalm-ansible napalm

WORKDIR /home/awx
RUN git clone https://github.com/aruba/aruba-ansible-modules.git

WORKDIR /home/awx/aruba-ansible-modules
RUN $PYTHON_VENV aruba_module_installer/aruba_module_installer.py --reinstall
