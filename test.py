import requests

url = "http://www.google.de/search?q=foo"
print("Url: %s" % url)
print("Content-length: %s" % len(requests.get(url).content))
