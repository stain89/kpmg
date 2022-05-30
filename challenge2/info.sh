#!/bin/bash
INSTANCE_ID=`curl 169.254.169.254/latest/meta-data/instance-id`
AWS_REGION=`curl 169.254.169.254/latest/meta-data/placement/availability-zone | sed -e "s:\([0-9][0-9]*\)[a-z]*\$:\\1:"`
AWS_ACCOUNT_ID=`curl 169.254.169.254/latest/dynamic/instance-identity/document/ | grep accountId | grep -e "[0-9]" -o | tr -d '\n'`

json_data=$(cat <<EOF
{
    "instance_id": "$INSTANCE_ID",
    "aws_region": "$AWS_REGION",
    "aws_account_id": "$AWS_ACCOUNT_ID"
}
EOF
)
echo "$json_data"