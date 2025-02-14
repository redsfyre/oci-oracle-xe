#!/bin/bash
# Since: August 2021
# Author: gvenzl
# Name: backup_old_images.sh
# Description: Backup current images on Docker Hub
#
# Copyright 2021 Gerald Venzl
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Exit on errors
# Great explanation on https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eeuo pipefail

# Download images
echo "Backup latest"
podman pull docker.io/gvenzl/oracle-xe:latest
podman tag  docker.io/gvenzl/oracle-xe:latest docker.io/gvenzl/oracle-xe:latest-backup
podman rmi  docker.io/gvenzl/oracle-xe:latest

# Backup 21c images
echo "Backup 21.3.0-full"
podman pull docker.io/gvenzl/oracle-xe:21.3.0-full
podman tag  docker.io/gvenzl/oracle-xe:21.3.0-full docker.io/gvenzl/oracle-xe:21.3.0-full-backup
podman rmi  docker.io/gvenzl/oracle-xe:21.3.0-full

echo "Backup 21-full"
podman pull docker.io/gvenzl/oracle-xe:21-full
podman tag  docker.io/gvenzl/oracle-xe:21-full docker.io/gvenzl/oracle-xe:21-full-backup
podman rmi  docker.io/gvenzl/oracle-xe:21-full

echo "Backup full"
podman pull docker.io/gvenzl/oracle-xe:full
podman tag  docker.io/gvenzl/oracle-xe:full docker.io/gvenzl/oracle-xe:full-backup
podman rmi  docker.io/gvenzl/oracle-xe:full

echo "Backup 21.3.0"
podman pull docker.io/gvenzl/oracle-xe:21.3.0
podman tag  docker.io/gvenzl/oracle-xe:21.3.0 docker.io/gvenzl/oracle-xe:21.3.0-backup
podman rmi  docker.io/gvenzl/oracle-xe:21.3.0

echo "Backup 18"
podman pull docker.io/gvenzl/oracle-xe:21
podman tag  docker.io/gvenzl/oracle-xe:21 docker.io/gvenzl/oracle-xe:21-backup
podman rmi  docker.io/gvenzl/oracle-xe:21

# Backup 18c images
echo "Backup 18.4.0-full"
podman pull docker.io/gvenzl/oracle-xe:18.4.0-full
podman tag  docker.io/gvenzl/oracle-xe:18.4.0-full docker.io/gvenzl/oracle-xe:18.4.0-full-backup
podman rmi  docker.io/gvenzl/oracle-xe:18.4.0-full

echo "Backup 18-full"
podman pull docker.io/gvenzl/oracle-xe:18-full
podman tag  docker.io/gvenzl/oracle-xe:18-full docker.io/gvenzl/oracle-xe:18-full-backup
podman rmi  docker.io/gvenzl/oracle-xe:18-full

echo "Backup 18.4.0"
podman pull docker.io/gvenzl/oracle-xe:18.4.0
podman tag  docker.io/gvenzl/oracle-xe:18.4.0 docker.io/gvenzl/oracle-xe:18.4.0-backup
podman rmi  docker.io/gvenzl/oracle-xe:18.4.0

echo "Backup 18"
podman pull docker.io/gvenzl/oracle-xe:18
podman tag  docker.io/gvenzl/oracle-xe:18 docker.io/gvenzl/oracle-xe:18-backup
podman rmi  docker.io/gvenzl/oracle-xe:18

echo "Backup 18.4.0-slim"
podman pull docker.io/gvenzl/oracle-xe:18.4.0-slim
podman tag  docker.io/gvenzl/oracle-xe:18.4.0-slim docker.io/gvenzl/oracle-xe:18.4.0-slim-backup
podman rmi  docker.io/gvenzl/oracle-xe:18.4.0-slim

echo "Backup 18-slim"
podman pull docker.io/gvenzl/oracle-xe:18-slim
podman tag  docker.io/gvenzl/oracle-xe:18-slim docker.io/gvenzl/oracle-xe:18-slim-backup
podman rmi  docker.io/gvenzl/oracle-xe:18-slim

echo "Backup slim"
podman pull docker.io/gvenzl/oracle-xe:slim
podman tag  docker.io/gvenzl/oracle-xe:slim docker.io/gvenzl/oracle-xe:slim-backup
podman rmi  docker.io/gvenzl/oracle-xe:slim

# Backup 11g images
echo "Backup 11.2.0.2-full"
podman pull docker.io/gvenzl/oracle-xe:11.2.0.2-full
podman tag  docker.io/gvenzl/oracle-xe:11.2.0.2-full docker.io/gvenzl/oracle-xe:11.2.0.2-full-backup
podman rmi  docker.io/gvenzl/oracle-xe:11.2.0.2-full

echo "Backup 11-full"
podman pull docker.io/gvenzl/oracle-xe:11-full 
podman tag  docker.io/gvenzl/oracle-xe:11-full docker.io/gvenzl/oracle-xe:11-full-backup
podman rmi  docker.io/gvenzl/oracle-xe:11-full 

echo "Backup 11.2.0.2"
podman pull docker.io/gvenzl/oracle-xe:11.2.0.2
podman tag  docker.io/gvenzl/oracle-xe:11.2.0.2 docker.io/gvenzl/oracle-xe:11.2.0.2-backup
podman rmi  docker.io/gvenzl/oracle-xe:11.2.0.2

echo "Backup 11"
podman pull docker.io/gvenzl/oracle-xe:11
podman tag  docker.io/gvenzl/oracle-xe:11 docker.io/gvenzl/oracle-xe:11-backup
podman rmi  docker.io/gvenzl/oracle-xe:11

echo "Backup 11.2.0.2-slim"
podman pull docker.io/gvenzl/oracle-xe:11.2.0.2-slim
podman tag  docker.io/gvenzl/oracle-xe:11.2.0.2-slim docker.io/gvenzl/oracle-xe:11.2.0.2-slim-backup
podman rmi  docker.io/gvenzl/oracle-xe:11.2.0.2-slim

echo "Backup 11-slim"
podman pull docker.io/gvenzl/oracle-xe:11-slim
podman tag  docker.io/gvenzl/oracle-xe:11-slim docker.io/gvenzl/oracle-xe:11-slim-backup
podman rmi  docker.io/gvenzl/oracle-xe:11-slim
