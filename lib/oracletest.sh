#!/bin/bash

#move to location of  Oracle Instant Client 
cd ./oracle
unzip instantclient-basic-linux.x64-12.1.0.2.0.zip
unzip instantclient-sdk-linux.x64-12.1.0.2.0.zip
mv instantclient_12_1 instantclient
cd instantclient
ln -s libclntsh.so.12.1 libclntsh.so

export LD_LIBRARY_PATH=/oracle/instantclient:$LD_LIBRARY_PATH
export OCI_LIB_DIR=/oracle/instantclient
export OCI_INC_DIR=/oracle/instantclient/sdk/include