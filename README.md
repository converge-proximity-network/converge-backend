# Converge Backend

[![Build Status](https://travis-ci.org/converge-proximity-network/converge-backend.svg)](https://travis-ci.org/converge-proximity-network/converge-backend)
[![Code Climate](https://codeclimate.com/github/converge-proximity-network/converge-backend/badges/gpa.svg)](https://codeclimate.com/github/converge-proximity-network/converge-backend)
[![Test Coverage](https://codeclimate.com/github/converge-proximity-network/converge-backend/badges/coverage.svg)](https://codeclimate.com/github/converge-proximity-network/converge-backend)

`converge-backend` is the API and admin interface component of the [Converge Proximity Social Network](https://github.com/converge-proximity-network).

**Status:** Basic application structure created. In heavy development!

### Environment

Converge uses Dotenv to load environmental variables from a file for Development and Test environments. To get started, copy `.env.example` file and adjust to your tastes.

```sh
$ cp .env.example .env
```

Note that there are a few environmental variables you must fill in yourself. Please peruse the file to ensure you've set what's needed!

### Setup

1. Install all system dependencies (PostgreSQL, ElasticSearch) and ensure they're launched
3. Install Bundler and dependencies `$ gem install bundler && bundle install`
4. Create `converge_dev` and `converge_test` databases and users in PostgreSQL (using `db:create` or manually)
5. Run migrations `$ bundle exec rake db:migrate`
6. Start the server: `$ bundle exec rails s`

### Future

* ???

### Contributing

Please fork and submit a pull request if you'd like to contribute. It'd be super-keen if you followed [this pull request authoring guide](https://github.com/blog/1943-how-to-write-the-perfect-pull-request)!
