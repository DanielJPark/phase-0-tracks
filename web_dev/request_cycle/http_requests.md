1. What are some common HTTP status codes?

200 - Everything is OK.
300 - Multiple Choices
301 - URI has moved permanently
302 - URI has moved temporarily and the different URI has been located.
304 - Not modified
307 - Temporiliry redirected to a different URI
400 - Bad request. Request could not be understood.
401 - Unauthorized request. User needs special authentication.
403 - Forbidden. Server understands request but refused to fulfill the request
404 - Not found. Server did not find anything that matches the request.
410 - Gone. request resource is no longer available.
500 - Internal server error
501 - Not Implemented. 
503 - Service unavailable.
550 - Permission Denied.



2. What is the difference between a GET request and a POST request?
	When might each be used?

A GET request is retrieving information/data from the server such as a webpage or file download, where as a POST request is when information/data is beign sent and given to the server, such as uploading a file to the server for others the access.

3. Optional bonus question: What is a cookie(the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small files that are stored on a computer. They hold small amoutns of data specific to a certain website/client and are access either by the servier or the client computer. It allows the server to deliver data/information tot he client that is specifically taylored ot the client based on the device, setup, etc.