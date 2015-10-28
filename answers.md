# Q0: Why is this error being thrown?
Since we have not generated Pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
We have .sample to pick a random pokemon to be @pokemon.
all pokemons are in seed file


# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
capture_path set the id to the @pokemon so we can use find() to get the pokemon we need in capture fucntion


# Question 3: What would you name your own Pokemon?
Swag

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I pass into the trainer/show/user_id path since we want to return to the same page after we press destory button.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
