Sinatra + MongoDB + Resque + Clockwork Bootstrap
================================================
This project is a bootstrap to begin project with these technologies. 

- **Sinatra** framework
- **MongoDB** database
- **Resque** background jobs
- **Clockwork** cron

##Run databases
###MongoDB (main database)
    $ mkdir data
    $ mongod --dbpath ./data
###Redis (for Resque)
	$ redis-server


##Run services

    $ bundle install
    $ foreman start

##Deploy on heroku
Create a Heroku cedar and add some free addons
	
	$ heroku create --stack cedar
	$ heroku addons:add mongohq:free
	$ heroku addons:add redistogo:nano
	
After pushing setting up accounts and pushing you changes, run the following code to scale your heroku project (may not be free)

    $ heroku scale web=1 resque=1 clock=1

:)

##Thanks

Thanks to [kylefritz](https://github.com/kylefritz/) for make my life little bit easier with his [Resque+Sinatra+Foreman example](https://github.com/kylefritz/resque-sinatra-foreman-example)