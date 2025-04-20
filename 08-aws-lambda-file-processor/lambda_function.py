import json

def lambda_handler(event, context):
    for record in event['Records']:
        bucket = record['s3']['bucket']['name']
        key = record['s3']['object']['key']
        size = record['s3']['object']['size']

        print(f"New file uploaded: {key}")
        print(f"Bucket: {bucket}")
        print(f"Size: {size} bytes")

    return {
        'statusCode': 200,
        'body': json.dumps('File processed successfully')
    }
