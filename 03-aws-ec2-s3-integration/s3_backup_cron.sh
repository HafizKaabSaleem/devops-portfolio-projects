#!/bin/bash
# Backup a directory and upload to S3

# Variables
SOURCE_DIR="/home/ec2-user/data"
BACKUP_NAME="backup-$(date +%F-%H%M).tar.gz"
S3_BUCKET="my-devops-portfolio-backups"

# Create archive
tar -czf /tmp/$BACKUP_NAME $SOURCE_DIR

# Upload to S3
aws s3 cp /tmp/$BACKUP_NAME s3://$S3_BUCKET/

# Clean up
rm -f /tmp/$BACKUP_NAME

echo "Backup uploaded to S3: $BACKUP_NAME"