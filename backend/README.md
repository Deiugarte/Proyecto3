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

- Run `$ cp config/database.yml.template config/database.yml`
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

`$ bundle exec rspec`

or just

`$ rspec`

Running those commands would create or update a folder called coverage, which contains an html showing the code coverage, ensure that the coverage is 100%

2) Run rubocop linter:

`$ bundle exec rubocop`

Remember to create an .env file to store the environment variables.

3) Generate API after tests docs:

`$ ./generate_documentation.sh`

Remember to create an .env file to store the environment variables.