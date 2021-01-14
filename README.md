## Rails on Repl.it

Repl.it is an online programming IDE with support for 50 languages and free hosting for web applications of any type (almost). That being said, support for running Rails applications is pretty doodoo, and for a site who's selling point is minimal setup and configuration, it's quite a pain to deploy Rails apps. This repo is intented to streamline the proccess of creating Ruby on Rails applications within a REPL and deploy it on Repl.it.

## Setup an RoR app

1. Create a [new Ruby REPL](https://repl.it/l/ruby).
2. Open the shell and run the following commands in order:
   + `rm main.rb`
   + `git clone https://github.com/IreTheKID/rails-on-repl.git .`
   + `bundle install --clean --path .bundle`

3. Create a new Rails app with your desired options:
   + `bundle exec rails new . --minimal --api`

4. Allow all overwrites by entering `a` when prompted:
   + `Overwrite /home/runner/~/README.md? (enter "h" for help) [Ynaqdhm] a`

5. Navigate to `config/environments/development.rb` and clear the hosts like so:
```ruby
Rails.application.configure do
    # other code...
    config.hosts.clear
end
```

5. Hit `RUN` and enjoy!

**NOTE** - Because the Web-View tab in the IDE only allows traffic from the repl's host, you'll have to open your app in a new tab to view it. ¯\\\_(ツ)\_/¯


**BONUS** - Here are the commands for making a *bare minimum* Rails app:

```shell
bundle exec rails new . --skip-keeps --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-record --skip-active-storage --skip-puma --skip-action-cable --skip-sprockets --skip-spring --skip-listen --skip-turbolinks --skip-test --skip-system-test --skip-bootsnap --api

rm -rf app/jobs app/models config/initializers config/locales lib log public tmp vendor config/environments/test.rb config/environments/production.rb config/credentials.yml.enc config/master.key bin/rake bin/setup bin/bundle
```
