# Prun.er
Visit prun.er at: https://pruner.herokuapp.com

[![Code Climate](https://codeclimate.com/github/andela-ydaniju/prun.er/badges/gpa.svg)](https://codeclimate.com/github/andela-ydaniju/prun.er) [![Circle CI](https://circleci.com/gh/andela-ydaniju/prun.er.svg?style=svg)](https://circleci.com/gh/andela-ydaniju/prun.er) [![Coverage Status](https://coveralls.io/repos/andela-ydaniju/prun.er/badge.svg?branch=master&service=github)](https://coveralls.io/github/andela-ydaniju/prun.er?branch=master)

## Installation
Web application is written with Ruby using the Ruby on Rails framework.

To install Ruby visit [Ruby Lang](https://www.ruby-lang.org). [v2.0.0p647]

To install Rails visit [Ruby on Rails](http://rubyonrails.org/). [v4.2.4]

## Using the App

1. Once you have Ruby and Rails installed, clone the repo by running

  ```$ git clone https://github.com/andela-ydaniju/prun.er.git```

2. Then run the following command to install gem dependencies:

  ```$ bundle install```

3. Then run the following command to set up the database:

  ```$ bundle exec rake db:migrate```

4. Once the command runs successfully, start the Rails server by running:

  ```$ rails server```

5. To access the app, visit http://localhost:3000 in a web browser

## Testing

1. To test the web application, run the following command to carry out all tests:

  ```$ bundle exec rake spec```

2. To view test descriptors, run the following command:

  ```$ bundle exec rake spec -fd```

## Contributing

1. Fork it by visiting - https://github.com/andela-ydaniju/prun.er/fork

2. Create your feature branch

  ```$ git checkout -b new_feature```

3. Contribute to code

4. Commit changes made

  ```$ git commit -a -m 'descriptive_message_about_change'```

5. Push to branch created

  ```$ git push origin new_feature```

6. Then, create a new Pull Request

## Limitations

1. Redirection to other sites is not protected. Users are solely responsible for their links

2. Prun.er presently have no means for user management beyond account creation

3. The app is still undergoing testing for possible bugs.