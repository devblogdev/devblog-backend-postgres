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
* Manages DevBlog users' session (logs users in; logs users out)
* Sends email verification links with expiration time via email for users creating an account in DevBlog with email and password
* Sends password reset links with expiration time via email (for users who signed up via email and password) (utilizes SendGrid for sending email and a SideKiq background worker for link expiration)
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

## Services 
### Email Service
To test the email service in development, go to config/environments/development.rb, comment out the code for "production code" found at the end of the file, and uncomment the code for "Configuration if using personal email account" in the same file. Add your email service username and password using environment variables in the uncommented code (preferrably use your gmail account username and password).

If you have a SendGrid account with an API key, you can leave the production code from above and use your SendGrid API key instead. Note that you'll need to have a domain in SendGrid, which you'll add to the "domain" key in the code.

This [post](https://dev.to/morinoko/sending-emails-in-rails-with-action-mailer-and-gmail-35g4) contains a full tutorial on how to setup emails on Rails and how to test sending emails and prevewing your emails right from Rails. 

### Background Workders
To run the background workers in development, you'll need to have Redis and Sidekiq installed. A background worker performs scheduled operations (background jobs) for immediate execution or for later execution. The Redis database stores the data for the job to be executed, while SideKiq performs the scheduled job.

You'll then need to start the Redis server first, then the SideKiq worker, on two different terminals from the Rails project.

Starting Redis:
```
redis-server
```
Starting SideKiq:
```
bundle exec sidekiq
```

If you go to app/jobs you'll see that DevBlog has three background jobs. The users background jobs are scheduled in the users controller, while the images background job is scheduled in the images controller. As an example, and having Redis and Sidekiq running, if you create an account using DevBlog Frontend (in development), DevBlock backend issues a email verification link for the new user. If the user does not confirm the link in their email within 15 minutes, you'll see in your Sidekiq terminal right at 15 minutes that the user is automatically deleted. Nice, isn't it? (This prevents having orphane emails in your database).



<!-- * System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions -->

