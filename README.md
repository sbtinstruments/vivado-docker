# vivado-docker

Vivado installed into a docker image for CD purposes. E.g., for use in a Jenkins pipeline.

## Build instructions

1. Download the Vivado installation package to this folder. E.g., download `Xilinx_Vivado_SDK_2018.3_1207_2324.tar.gz` to this folder.
2. Build the image (will take about 30 minutes) passing in the build args. E.g., 
    ```
    docker build --build-arg VIVADO_TAR_FILE=Xilinx_Vivado_SDK_2018.3_1207_2324.tar.gz -t vivado:2018.3 .
    ```
