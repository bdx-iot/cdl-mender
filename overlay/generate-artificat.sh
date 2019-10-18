#!/bin/bash
ARTIFACT_NAME=overlay
DEVICE_TYPE="stm32mp157a-dk1"     
OUTPUT_PATH="overlay.mender"
DEST_DIR="/"
OVERLAY_TREE="rootfs_overlay"
./dir-overlay-artifact-gen -n ${ARTIFACT_NAME} -t ${DEVICE_TYPE} -d ${DEST_DIR} -o ${OUTPUT_PATH} ${OVERLAY_TREE}

