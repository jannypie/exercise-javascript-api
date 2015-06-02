## Requirements

- Ruby 2.0+

## Setup

Clone this repository to your local machine:

    git clone http://github.com/path/to/repository

Install gems with bundle:

    bundle install

Create the sqlite3 database:

    rake db:create

Migrate and seed the database:

    rake db:reset

Run rails server:

    rails s

Visit website running on your local machine:

    http://localhost:3000

## Curl

You can curl the API once the server is running:

    curl "http://localhost:3000/api/posts"
