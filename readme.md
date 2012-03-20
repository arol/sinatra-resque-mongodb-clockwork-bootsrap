Sinatra + MongoDB + Resque + Clockwork Bootstrap
================================================
This project is a bootstrap to begin a project with those technologies.

- **Sinatra** framework
- **MongoDB** database
- **Resque** background jobs
- **Clockwork** cron

#Run databases
##MongoDB (main database)
    $ mkdir data
    $ mongod --dbpath ./data
##Redis (for Resque)
	$ redis-server


#Run services

    $ bundle install
    $ foreman start


#Thanks

Thanks to [kylefritz](https://github.com/kylefritz/) for make my life little bit easier with his [Resque+Sinatra+Foreman example](https://github.com/kylefritz/resque-sinatra-foreman-example)