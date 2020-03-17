FROM ubuntu:18.04

# build with: docker build --build-arg VIVADO_TAR_FILE=vivado_2018.3.tar -t vivado:2018.3 .

ARG VIVADO_TAR_FILE

RUN mkdir /install_vivado
COPY install_config.txt /
# ADD does the extraction
ADD ${VIVADO_TAR_FILE} /install_vivado/

# Run the install
RUN /install_vivado/*/xsetup \
	--agree 3rdPartyEULA,WebTalkTerms,XilinxEULA \
	--batch Install \
	--config /install_config.txt

# Cleanup
RUN rm -rf /${VIVADO_TAR_FILE} /install_config.txt /install_vivado

