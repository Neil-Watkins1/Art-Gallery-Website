## Installation

Please note that you will need PostgreSQL installed in your local machine.

Follow these steps from the Terminal to start the project:

1. Open the terminal and clone this project.
2. If you don't already have PostgreSQL running in the background, start it by typing `pg_ctl -D /usr/local/var/postgres start`.
3. Then, create the database: `createdb gallery`
4. Run `psql -d gallery -f db/gallery.sql` to create the tables.
5. Make sure you have Ruby installed.
6. Install the pg gem by running this command from the terminal: `gem install pg` PG is a Ruby interface interface for PostGreSQL. Find out more about it from the [Ruby docs](https://www.rubydoc.info/gems/pg).
7. Seed the tables with the sample data by running: `ruby ./db/seeds.rb`
8. Install Sinatra: `gem install sinatra sinatra-contrib`
9. Start the page with `ruby controller.rb`
10. Open your browser and navigate to `http://localhost:4567` to view the site.
