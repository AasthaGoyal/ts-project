REGION=$1
APP=$2
ROLE=$3
echo "===== assuming permissions => $ROLE ====="
KST=(`aws sts assume-role --role-arn $ROLE --role-session-name deployment-$APP --query '[Credentials.AccessKeyId,Credentials.SecretAccessKey,Credentials.SessionToken]' --output text`)
unset AWS_SECURITY_TOKEN
export AWS_DEFAULT_REGION=$REGION
export AWS_ACCESS_KEY_ID=${KST[0]}
export AWS_SECRET_ACCESS_KEY=${KST[1]}
export AWS_SESSION_TOKEN=${KST[2]}
export AWS_SECURITY_TOKEN=${KST[2]}
