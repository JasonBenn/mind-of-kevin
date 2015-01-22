TO DO:

~~Sign up for Mailgun in your name.~~
~~I build a lil app and deploy it to Heroku. ~~
Mailgun can be configured to parse incoming emails and POST the data to my app.
The app will receive email data and deal with it like this:

IF email is from Kevin && email content is "DELETE"
ERASE all emails from database
ELSE IF email is from Kevin
SELECT all emails
FORWARD email from Kevin to all emails using Mailgun Rails gem
ELSE email from someone else
ADD email to DB
ENDIF

ensure uniqueness on emails
try to test this!
