#!/bin/bash

OTELCOL_VERSION=0.78.0
LOGPUSHER_VERSION=v0.1.0 
TRACEPUSHER_VERSION=0.8.0 

# Download OTel Collector
wget https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_VERSION}/otelcol-contrib_${OTELCOL_VERSION}_linux_amd64.tar.gz
tar -xf otelcol-contrib_${OTELCOL_VERSION}_linux_amd64.tar.gz
mv otelcol-contrib otelcol
rm otelcol-contrib_${OTELCOL_VERSION}_linux_amd64.tar.gz

# Download Log & Trace Pusher
docker pull gardnera/logpusher:${LOGPUSHER_VERSION}
docker pull gardnera/tracepusher:v${TRACEPUSHER_VERSION}
wget -O tracepusher https://github.com/agardnerIT/tracepusher/releases/download/${TRACEPUSHER_VERSION}/tracepusher_linux_x64_${TRACEPUSHER_VERSION}
chmod +x tracepusher
mv tracepusher /usr/local/bin

# Modify scripts
chmod +x tracegen.sh


echo "# ---------------------------------------------#"
echo "#       🎉 Installation Complete 🎉           #"
echo "#           Please proceed now...              #"
echo "# ---------------------------------------------#"