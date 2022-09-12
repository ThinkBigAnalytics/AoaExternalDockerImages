#!/bin/bash

set -e 

# Update s3 config
sed -i "/host_base =/c\host_base = $S3_HOST" /root/.s3cfg
sed -i "/host_bucket =/c\host_bucket = $S3_BUCKET" /root/.s3cfg

# Download package
s3cmd get s3://${S3_BUCKET}/${PROJECT_ID}/job-artifacts/${JOB_ID}/docker-package.tar.gz
tar -xvf docker-package.tar.gz

# Launch the job
./launch.sh $MODE
