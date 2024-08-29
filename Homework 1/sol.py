import json
import requests
import sys


DATABASE_URLS = {
    0: "",
    1: ""
}


response0 = requests.get(DATABASE_URLS[0] + ".json")
book0 = json.loads(response0.text)

response1 = requests.get(DATABASE_URLS[1] + ".json")
book1 = json.loads(response1.text)


def hash_func(Djson):

    json_data = json.loads(Djson)
    
    if len(json_data["author"]) % 2 == 0:
        num = 0
    else:
        num = 1
    return num


def add_book(book_id, book_json):
    
    id = book_id
    data = json.loads(book_json)
    database_num = hash_func(book_json)

    response = requests.put(DATABASE_URLS[database_num] + "/" + id + ".json", json=data)
    
    return response

def search_by_author(author_name):
    
    arut_seach = author_name
    match_list = {}
    
    for book_keys, book_values in book0.items():
        if book_values['author'] == arut_seach:
            match = book0.get(book_keys)
            match_list[book_keys] = match 
    
    
    for book_keys, book_values in book1.items():
        if book_values['author'] == arut_seach:
            match = book1.get(book_keys)
            match_list[book_keys] = match 
    
    matches = json.dumps(match_list)
    
    return matches


def search_by_year(year):

    search_yr = year
    match_list = {}
    
    for book_keys, book_values in book0.items():
        if book_values['year'] == search_yr:
            match = book0.get(book_keys)
            match_list[book_keys] = match 
        
        
    for book_keys, book_values in book1.items():
        if book_values['year'] == search_yr:
            match = book1.get(book_keys)
            match_list[book_keys] = match 
 
    matches = json.dumps(match_list)
    
    return matches
