# Ticoplaces Backend

## Technologies and versions

* Rails(5.2.2)
* Ruby(2.6.0)
* MySQL v5.1.10 or greater

## How to install dependencies

`$ bundle install`

If you had troubles running some dependencies in development with puma.
You can run the following:

`$ bundle install --without production` # This will avoid
installing the gems under the block :production.

## How to create the database

- Run `cp config/database.template.yml config/database.yml`
- Edit the database.yml to specify your specific database username/password if needed.

- Run the following commands:

`$ rails db:create`
`$ rails db:setup`
`$ rails db:seed`

- Reset and create the database again with everything:

`$ rails db:reset`



## How to run the project

Run the command:

`$ rails server`

## Warning: Before a Pull Request please:

1) Verify all the Rspec Test are fine by running:

`bundle exec rspec`

or just

`rspec`

2) Run rubocop linter:

`bundle exec rubocop`