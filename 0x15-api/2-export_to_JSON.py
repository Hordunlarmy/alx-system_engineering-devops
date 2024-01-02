#!/usr/bin/python3
"""
export employee data in the json format to json file.
"""

import json
import requests
import sys


if __name__ == "__main__":
    url = f"https://jsonplaceholder.typicode.com/users/{sys.argv[1]}/"

    response = requests.get(url)
    username = response.json().get("username")

    response = requests.get(url + "todos")
    employee_todos = response.json()

    dictionary = {sys.argv[1]: []}
    for task in employee_todos:
        dictionary[sys.argv[1]].append({
            "task": task.get('title'),
            "completed": task.get('completed'),
            "username": username
        })
    with open(f'{sys.argv[1]}.json', 'w') as file:
        json.dump(dictionary, file)
