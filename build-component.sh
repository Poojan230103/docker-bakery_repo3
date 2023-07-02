#!/usr/bin/env bash

#globals
COMPONENT_NAME=$1
TAG_TEMP=$2
TAG=${TAG_TEMP:=1.0}
TEMP=$3
PUSH=${TEMP:=-NO}
# IMAGE=docker-bakery-system/${COMPONENT_NAME}:${TAG}
IMAGE=poojan23/docker-bakery-system_${COMPONENT_NAME}:${TAG}

function ping(){
    echo "Building from docker file path::"
}
function check_component() {
   echo "COMPONENT_NAME: " ${COMPONENT_NAME}
  case ${COMPONENT_NAME} in
    repo3-component1)
    DOCKERFILE_PATH=./components_repo3/test-component1_repo3/Dockerfile
    ;;
    repo3-component2)
    DOCKERFILE_PATH=./components_repo3/test-component2_repo3/Dockerfile
    ;;
    repo3-component3)
    DOCKERFILE_PATH=./components_repo3/test-component3_repo3/Dockerfile
    ;;
    *)
      echo "Invalid component" && exit 1 ;;
  esac
  echo "<Building Image>
        dockerfile path ::" ${DOCKERFILE_PATH}"
        tag             ::" ${TAG}
}


function build()
{
    docker build -t ${IMAGE} -f "${DOCKERFILE_PATH}" .
}


check_component
build


