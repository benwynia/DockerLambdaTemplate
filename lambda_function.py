import boto3
import sys
import os

def lambda_handler(event, context):

    return {
            'statusCode': 200,
            'body': "Hello World"
        }
