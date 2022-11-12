# DevBlog Backend

This is the RESTFul Ruby on Rails backend API for [DevBlog Frontend](https://github.com/mmartinezluis/devblog-frontend). This backend:

* Stores DevBlog's blog posts, and performs CRUD actions for blog posts
* Stores a json copy for the cover image of blog posts (original image files stored in a AWS S3 bucket), and performs CRUD actions for cover images
* Issues JWT tokens with expiration time for users logging in to DevBlog via email and password
* Authorizes users when users access their profile portal in DevBlog.
(Side note: authorization means that the logged-in user credentials are verified first before performing any subsequent actions requested by the user through their DevBlog account)
* Authorizes requests for creating, editing, publishing or deleting draft posts
* Authorizes request for creating, editing or deleting published posts
* Authorizes requests for creating, editing, or deleting the cover image of blog posts
* Manages DevBlog users session (logs users in; logs users out)
* Sends email verification links with expiration time via email for users creating an account in DevBlog with email and password
* Sends password reset links with expiration time via email (for users who signed up via email and password) (utilizes SendGrid for sending email and a SideKick background worker for link expiration)
* Creates users who sign up to DevBlog via Google sign in
* Authorizes all requests made by Google signed-in users
* Performs CRUD actions for the profile information for users 
* Performs CRUD actions for the profile image for users
* Runs a SideKiq background worker to delete the unsaved images in the body of blog posts 

In queue functionalities include
* Performing CRUD actions for comments in blog posts
* Performing CRUD actions for blog posts upvotes 
* Performing CRUD actions for following an author
* Performing a hybrid OAuth2 process, where client sends a code from OAuth2 provider, and server retrieves access and refresh tokens from provider using the code 

## Installation
To use DevBlog backend locally, in your terminal run
```
git clone https://github.com/mmartinezluis/devblog-backend-postgres.git
```

Then cd into the project, and install the Ruby gems by running
```
gem install
```

Run the database migrations
```
rails db:migrate
```

And start the server
```
rails server
```

## Services and Background Workers




* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

* ...
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