FROM ubuntu:22.04

# Non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# Dependencies
RUN apt-get update && apt-get install -y \
    build-essential cmake git libncurses5 libtinfo5 \
    libx11-dev libxrender1 libxtst6 libxi6 libgtk2.0-0 \
    wget unzip xz-utils python3 python3-pip \
    sudo rsync libssl-dev curl dialog vim

# Add Vitis/PetaLinux installers manually
COPY Xilinx_Unified_2025.1_*.bin /opt/Xilinx/
COPY PetaLinux_2025.1_*.bin /opt/Xilinx/

# Install Vitis
RUN chmod +x /opt/Xilinx/Xilinx_Unified_2025.1_*.bin && \
    /opt/Xilinx/Xilinx_Unified_2025.1_*.bin --batch \
        InstallPath=/opt/Xilinx \
        Product=Vitis,Vitis_HLS,DocNav \
        --agree XilinxEULA,3rdPartyEULA,WebTalkTerms

# Install PetaLinux
RUN chmod +x /opt/Xilinx/PetaLinux_2025.1_*.bin && \
    /opt/Xilinx/PetaLinux_2025.1_*.bin -d /opt/petalinux

# Env variables
ENV XILINX_VITIS=/opt/Xilinx/Vitis/2025.1 \
    XILINX_HLS=/opt/Xilinx/Vitis_HLS/2025.1 \
    XILINX_PLATFORM_REPO_PATHS=/workspace/platform \
    PATH=$PATH:/opt/Xilinx/Vitis/2025.1/bin:/opt/petalinux

# Workspace
WORKDIR /workspace
COPY . /workspace

# Entrypoint
COPY scripts/docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
