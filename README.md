## Rails on Repl.it

Repl.it is an online programming IDE with support for 50 languages and free hosting for web applications of any type (almost). That being said, support for running Rails applications is pretty doodoo, and for a site who's selling point is minimal setup and configuration, it's quite a pain to deploy Rails apps. This repo is intented to streamline the proccess of creating Ruby on Rails applications within a REPL and deploy it on Repl.it.

## Setup an RoR app

1. Create a [new Ruby REPL](https://repl.it/l/ruby).
2. Open the shell and run the following commands in order:
+ `rm main.rb`
+ `git clone https://github.com/IreTheKID/rails-on-repl.git .`
+ `bundle install --clean --path .bundle`

3. Create a new Rails with your desired options:
+ `bundle exec rails new . --minimal --api`
4. Hit RUN and enjoy! :)