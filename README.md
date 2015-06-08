## Summary

Write javascript to populate home page of posts and then style to match the mockup

## Mockup

You'll find a mockup located in here:

    /docs/mockup.png

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

Using curl to PATCH JSON:
```
$ curl -X PATCH \
  -H "Content-Type:application/json" \
  -H "Accept:application/json" \
  -d "
    {\"post\":
      {
        \"title\": \"Foobar\"
      }
    }" \
  "http://localhost:3000/api/posts/:id"
```

Using curl to fake a Rails form PATCH request:
```
$ curl -X POST \
  -d "_method=PATCH&post[title]=Foobar" \
  "http://localhost:3000/api/posts/:id"
```


