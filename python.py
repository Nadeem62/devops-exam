import requests

def lambda_handler(event, context): 
  url = 'https://bc1yy8dzsg.execute-api.eu-west-1.amazonaws.com/v1/data'
  headers = {
    'Content-type': 'application/json'
    'X-Siemens-Auth': 'test'
  }

try: 
  response= requests.get(url), headers=headers)

  data = response.json()

  return {
    'statusCode': response.satus_code,
    'body': data
  }
except Exception as e:
  return {
    'statusCode' : 500,
    'body': str(e)
  }
  
