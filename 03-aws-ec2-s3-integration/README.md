# AWS EC2 to S3 Backup Automation

## Tools & Technologies
AWS CLI, EC2, S3, Bash, Cron

## Description
This script creates daily backups of a specified directory on an EC2 instance and uploads them to an Amazon S3 bucket. A cron job automates this task to ensure regular backups.

## How to Run
1. Configure AWS CLI with IAM credentials
2. Edit bucket name and backup path in script
3. Add cron job: `crontab -e`