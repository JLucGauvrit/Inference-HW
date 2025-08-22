FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    build-essential cmake git libncurses5 libtinfo5 \
    wget unzip xz-utils python3 python3-pip sudo rsync libssl-dev curl dialog vim

# Ajouter installateur Vitis manuellement (monté ou COPY)
COPY Xilinx_Unified_2025.1_*.bin /opt/Xilinx/
RUN chmod +x /opt/Xilinx/Xilinx_Unified_2025.1_*.bin && \
    /opt/Xilinx/Xilinx_Unified_2025.1_*.bin --batch InstallPath=/opt/Xilinx Product=Vitis --agree XilinxEULA,3rdPartyEULA,WebTalkTerms

ENV XILINX_VITIS=/opt/Xilinx/Vitis/2025.1 \
    PATH=$PATH:/opt/Xilinx/Vitis/2025.1/bin

WORKDIR /workspace
COPY vitis_server.py .
CMD ["python3", "vitis_server.py"]
