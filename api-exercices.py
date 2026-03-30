#API EX 1

import requests

url = 'https://jsonplaceholder.typicode.com/todos/1'
response = requests.get(url, verify=False)
print(response.status_code)
print(response.json())


#API EX 2

import requests

url = 'https://jsonplaceholder.typicode.com/posts'
data = {
    'title':'test1',
    'body':'test',
    'userId':1
}

response = requests.post(url=url, json=data, verify=False)
print(response.status_code)
print(response.reason)
print(response.json())

#API EX 3

import requests

url = 'https://jsonplaceholder.typicode.com/posts/1'
response = requests.delete(url, verify=False)
print(response.status_code)
print(response.reason)
print(response.json())

import requests
url = 'https://jsonplaceholder.typicode.com/posts'
data = {
    'title': 'Learn',
    'body': 'some python',
    'userId': 54
}
response = requests.post(url=url, json=data)
print(response.status_code)
print(response.json())
