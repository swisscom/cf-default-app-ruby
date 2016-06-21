# CF Default App Ruby

The default app that will be pushed into the Swisscom Application Cloud if the user doesn't provide any source code.

Based on [Sinatra](http://www.sinatrarb.com/).

## Run locally

1. Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
1. Install Bundler (accomplish this by running `gem install bundler`)
1. Run `bundle install`
1. Run `bundle exec ruby app.rb -p 3000`
1. Visit [http://localhost:3000](http://localhost:3000)

## Run in the cloud

1. Install the [cf CLI](https://github.com/cloudfoundry/cli#downloads)
1. Run `cf push my-ruby-app --random-route`
1. Visit the given URL
