#!/bin/bash
# -*- mode: sh -*-
#
# Copyright DataStax, Inc, 2017
#   Please review the included LICENSE file for more information.
#

set -e

. /base-checks.sh

link_external_config "${STUDIO_HOME}"

############################################
# Unpack notebooks
############################################

echo "Preparing notebooks..."
cd /opt/datastax-studio/examples/notebooks
i=0
for f in *.tar; do 
    echo "Unpacking ${f}..."
    tar --transform "s,notebook.bin,00000000-0000-0000-0000-00000000000${i}," -xf $f notebook.bin
    i=$((i+1))
done

############################################
# Run the command
############################################
echo "Starting DataStax Studio..."
exec "${STUDIO_HOME}/bin/server.sh"
