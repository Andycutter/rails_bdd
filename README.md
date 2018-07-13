https://github.com/Andycutter/rails_bdd

**OBS**
The validation of Email format is working on the site, as in a comment is NOT saved if the email does not look like email@email.se. But the rspec test does not let it pass.

# README Rails demo 20180907

### List of content

1. Description
2. Instructions
3. Dependencies
4. Notes
5. Change log

### 1. Description
This webpage tries to simulate a newspaper, where the publisher can publish articles and visitors kan leave comments to each article given that the visitor provides an email address.

### 2. Instructions
In your terminal on your local computer, go into the root folder of the application e.g. `$ cd rails_demo`
In the terminal start a local server using `$ rails s`
You can now access the application in your browser at `http://localhost:3000/`
On the site you should see a headline **Articles** and a link called **New Article**.
Under the headline is where the articles that are publishes using the new article link will be displayed. Is it your first time running the site the space beneeth Articles is empty.
Click on **New Article** to create a new article. You are required to fill in a **title** and **content** of the article. If any field is left empty, the article will not be created. When you have filled in your desired title and content of the article press the button **Create Article**. You are returned to the front page and your newly created article is displayed under the headline.
To go and leave a comment for the article, press the headline which will take you to a page with the article and a form to leave a comment. You are required to give a **valid email**, write your comment in the **Comment field** and press the **Save** button. The article page will update and your comment will be displayed under the article and comment form.
In this first release you have to manually go to `http://localhost:3000/` to return the front page.

### 3. Dependencies
For 

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
