# Starter Application

Starter Application is a Ruby on Rails 4.2 template to use as a base for your new Rails applications. Ideally suitable for deployment on Heroku, but may be used elsewhere.

  - Clone repository or otherwise download source code and install gems
  - ???
  - Profit!

The starter application was developed using Rails 4.2, and Ruby 2.2.0. I make no guarantees, however I'm sure it can be adapted for use on other versions of Rails and Ruby.

## Version

1.0.0

## Installation

1. Clone it (`git clone https://github.com/professornim/starter-app`)
2. Bundle it (`bundle install`)
3. Run migration (`rake db:migrate`)

### Notes

- The application name and creator are initialized in `.../config/application.rb` in the `config.application_name` and `config.application_creator` variables.
- High Voltage is initialized to route to `.../app/views/pages/index.html.erb` as the application root.
- The development and production environments are set up to route emails sent from the application through [Mandrill](https://mandrill.com/), make sure you set your Mandrill username and API key as environment variables.
- The only other environment variables you need to set are the `DOMAIN_NAME` and `SECRET_KEY_BASE`.
- It's not necessary, but you should probably change the development and test envrionments' `SECRET_KEY_BASE` to a new secret using `rake secret` to generate a new long string.

## Gems

Starter Application adds a number of gems to the default Rails gems to hit the ground running:

* [High Voltage](https://github.com/thoughtbot/high_voltage) - Rails engine for static pages
* [Twitter Bootstrap Sass](https://github.com/twbs/bootstrap-sass) - Sass-powered version of Bootstrap, ready to drop right into your Sass powered applications
* [Autoprefixer Rails](https://github.com/ai/autoprefixer-rails) - A Rails gem for the [Autoprefixer](https://github.com/postcss/autoprefixer) tool which parses CSS and add vendor prefixes to CSS rules using values from [Can I Use](http://caniuse.com/)
* [Devise](https://github.com/plataformatec/devise) - Flexible authentication solution for Rails with Warden
* [Better Errors](https://github.com/charliesome/better_errors) - Replaces the standard Rails error page with a much better and more useful error page
* [Binding of caller](https://github.com/banister/binding_of_caller) - Used in conjunction with Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names)
* [Quiet Assets](https://github.com/evrone/quiet_assets) - Mutes asset pipeline log messages
* [pg](https://bitbucket.org/ged/ruby-pg/wiki/Home) - Postgresql gem, used in production only (sqlite3 is used in development)
* [rails_12factor](https://github.com/heroku/rails_12factor) - Makes running your Rails app easier. Based on the ideas behind [12factor.net](http://12factor.net), used in production only
* [passenger](https://github.com/phusion/passenger) - A fast and robust web server and application server for Ruby, Python and Node.js, used in production only

## Contributing

1. Fork it (https://github.com/professornim/starter-app/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Issues

If you encounter any issues, please try to first fix it yourself, and then propose a new pull request (see Contributing). If you have tried to solve the issue on your own, but are still need of assistance, seek out help from Stack Overflow. If all else fails, open a new issue. While I will make every effort to integrate pull requests, I make no promises that I'll actively check the issues.

## Todo's

 - Add gem(s) for writing tests
 - Write tests

## License

The MIT License (MIT)

Copyright (c) 2015 Steve Nims, sjnims@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.