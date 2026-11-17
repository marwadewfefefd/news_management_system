1.Biggest Docker and php Challenge & Solution
    problem 1: page redirection "header('Location: ...')" in PHP failed because of HTML output which are  (whitespaces and html) since there was whitespaces at the begining of the page before the start of the <?php tag
    and HTML which was inside the echo  were both sent before calling session_start() and header() .

    Solution:Moved session_start() and redirection logic to the very top of PHP pages before any HTML output.

---

    problem2:PHP could not connect to MySQL using localhost inside a Docker container so the tables data was not fetched in the tables in the website.

    Solution:Updated the database database host connection from `localhost` to `db` (the Docker Compose service name).
    note:attached screen shots of the problem in docs/screenshots/error_occured

2.Most Important Git & GitHub Lesson
    1.Feature Branches & Pull Requests:learned how to work on separated branches and open Pull Requests on GitHub to review and merge the brances cleanly into main especially how it was used on the assignment for the documentaion

    2.commits:using structured commit prefixes (feat:,fix:)