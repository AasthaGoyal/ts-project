#!/bin/bash

aws cloudformation deploy --template-file generated-template.yaml   \
--stack-name $STACK_NAME --s3-bucket $DEPLOY_BUCKET \
--s3-prefix $APP_NAME --capabilities CAPABILITY_IAM --region ap-southeast-2 --parameter-overrides \
--no-fail-on-empty-changeset \
