# import requests


# def get_quote_for_the_day(category):
#     url = "https://quotes.rest/qod?language=en&category={}".format(category)
#     res = requests.get(url=url)
#     data = res.json()
#     quote = data['contents']['quotes'][0]['quote']
#     return quote

# quote = get_quote_for_the_day(category="inspire")    
# print(quote)


import requests

def get_quote_for_the_day(category):
    url = "https://quotes.rest/qod?language=en&category={}".format(category)
    res = requests.get(url=url)
    data = res.json()
    print(data)  # API response ko print karein
    if 'contents' in data:
        quote = data['contents']['quotes'][0]['quote']
        return quote
    else:
        return "Error: 'contents' key not found in the response."

quote = get_quote_for_the_day(category="inspire")
print(quote)
