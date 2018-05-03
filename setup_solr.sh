#!/bin/bash

apt install openjdk-8-jdk

SOLR_VERSION=5.5.5
SOLR_NAME=solr-$SOLR_VERSION
SOLR_TGZ_NAME=$SOLR_NAME.tgz
SOLR_URI=http://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/$SOLR_TGZ_NAME

SOLR_OAK_CONF_DIR=/var/solr/data/oak
mkdir -p $SOLR_OAK_CONF_DIR/conf

wget -N -P $SOLR_OAK_CONF_DIR /var/solr/data/oak https://raw.githubusercontent.com/apache/jackrabbit-oak/trunk/oak-solr-core/src/main/resources/solr/oak/core.properties

wget -N -P $SOLR_OAK_CONF_DIR/conf https://raw.githubusercontent.com/apache/jackrabbit-oak/trunk/oak-solr-core/src/main/resources/solr/oak/conf/schema.xml
wget -N -P $SOLR_OAK_CONF_DIR/conf https://raw.githubusercontent.com/apache/jackrabbit-oak/trunk/oak-solr-core/src/main/resources/solr/oak/conf/solrconfig.xml

wget -N $SOLR_URI

tar xzf $SOLR_TGZ_NAME $SOLR_NAME/bin/install_solr_service.sh --strip-components=2

./install_solr_service.sh $SOLR_TGZ_NAME -f -p 8080
