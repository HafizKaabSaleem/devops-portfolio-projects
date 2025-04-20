## Tools & Services
AWS Lambda, S3, Python

## Description
A Lambda function that automatically triggers when a file is uploaded to S3. It reads metadata and logs key details, useful for event-driven file processing.

## How to Test
1. Deploy `lambda_function.py` in AWS Lambda.
2. Set an S3 trigger on file upload.
3. Use `test_event.json` to simulate input event manually in AWS console.
