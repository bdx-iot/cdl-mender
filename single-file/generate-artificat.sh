#!/bin/bash
ARTIFACT_NAME=led
DEVICE_TYPE="stm32mp157a-dk1"
OUTPUT_PATH="led.mender"
DEST_DIR="/usr/sbin"
FILE="boot-script.sh"
./single-file-artifact-gen -n ${ARTIFACT_NAME} -t ${DEVICE_TYPE} -d ${DEST_DIR} -o ${OUTPUT_PATH} ${FILE} -- \
	--script ArtifactCommit_Enter_00 \
	--script ArtifactInstall_Enter_00 \
	--script ArtifactInstall_Leave_00 \
	--script ArtifactRollback_Enter_00 \
	--script ArtifactRollback_Leave_00

