FROM centos:7 

RUN yum -y update && yum -y install epel-release \
    && yum -y install ansible python-pip 

RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash - \
	&& yum -y install nodejs

RUN pip install --upgrade pip

RUN pip install ansible-lint

# Default command 
CMD ["/bin/bash"]
