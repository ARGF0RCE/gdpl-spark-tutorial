#!/bin/bash

# This script installs Apache Spark dependencies

# Install Java (if not already installed)
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk

# Download and install Apache Spark
wget https://downloads.apache.org/spark/spark-3.5.0/spark-3.5.0-bin-hadoop3.tgz
tar xvf spark-3.5.0-bin-hadoop3.tgz
sudo mv spark-3.5.0-bin-hadoop3 /opt/spark

# Set environment variables
export SPARK_HOME=/opt/spark
export PATH=$SPARK_HOME/bin:$PATH

echo "Spark installed successfully!"
