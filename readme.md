readme.md
#How to..
#User
rails new -d postgresql blog_app
##open routes.rb
think about what kind of RESTful CRUD you want
Write those out
make a user route, session route, and post route
##create the db models/tables
rails g model user new, create, show
rails g model post new,  create, show, edit, update
Go in to the user.rb and add the raltionship to post. Do the same with post.rb
Then go in db  folder and add the belongs_to relationship inside of the users item(posts.rb file)
##run migrate in terminal
test the db out with rails c
make 2 variables here in terminal for user and for post
u = User.create(name:"rolando@rolando.com", password:"")
Afteryou make the two, then add the post to belong to(belong_to) the user id with u.posts << p
#now make the interface
<ol>
	<li>add the render :new phrase to the user controller</li>
	<li>open up the users folders under the views folder, make the form to sign up in new.html</li>
	<li>make the signup work in the user controller with create user_params, the private param that allows user to be saved to db, and once and foremost show the user that they have signed up through 'show'
	<li>I made the controller to have a @cureent_user instance to call on the show.html page to append the logged on users info</li>
</ol>
#Posts

