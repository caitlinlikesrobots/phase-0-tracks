* What are some common HTTP status codes?

The top ten (according to http://www.restapitutorial.com/httpstatuscodes.html) are:

1. 200 OK
2. 201 Created
3. 204 No Content
4. 304 Not Modified
5. 400 Bad Request
6. 401 Unauthorized
7. 403 Forbidden
8. 404 Not Found
9. 409 Conflict
10. 500 Internal Server Error
(not top 10, but immediately interesting)
100 Continue
300 Multiple Choices
429 Too Many Requests
505 HTTP Version Not Supported

* What is the difference between a GET request and a POST request? When might each be used?

GET REQUESTS data from a specified resource
These requests can be cached
They remain in browser history
They are able to be bookmarked
They have restrictions on length

POST SUBMITS data to be processed to a specified source
These submissions are never cached
They do not remain in browser history
They cannot be bookmarked
They have no restrictions on length

GET is useful in the sense that its data has high visibility and can be saved by users for future use. GET also is used to retrieve data.

POST is useful for secure information that requires low visibility for users and works well for sensitive data that is not retrievable for users. 

* What is a cookie?
A cookie is a small txt file that is stored by a user's browser on the user's machine. They contain non-executable code and are used to instruct browsers to store this information and send it back to the server with each subsequent HTTP request. Cookies are used to identify specific users such as when you login to a site using username/password credentials. 