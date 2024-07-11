FROM amazonlinux:2023

WORKDIR /builder
  
RUN yum install -y aws-nitro-enclaves-cli.x86_64 aws-nitro-enclaves-cli-devel.x86_64 git

COPY build.sh build.sh
RUN chmod +x build.sh

COPY hello/ hello/

CMD ["/builder/build.sh"]
