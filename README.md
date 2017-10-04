# README

- Wait, what is this?

Roll for Initiative.

A combination dice-roller and chatroom that will allow players and game coordinators to gather together online and continue gaming experiences they've come to love.  Roll for initiative uses the ActionCable library fresh with Rails 5.0 and allows users to see in real time when their friends send messages or roll the dice.

- Where do I begin?

Clone this repository.   

- What do I need to install?

From the new home of your new app, please run 'bundle install' and 'npm install'.  This assumes that you are using bundler for gem management and npm for node management.  If you are using other methods of managing those bits of code, we highly recommend using those instead.  

- Anything else I need to do?

You'll need to set up the database with 'rake db:create && rake db:migrate' and then fill the database with some data with 'rake db:seed'.  If you feel more comfortable with the newer commands you can substitute 'rake' with 'rails'.

- How do I kick this thing off?

Once you've got it in a safe new home, open a few terminal windows in the folder acting as it's new home. In one you'll run 'redis-server' and in the other you'll run 'foreman start -f Procfile.dev'.  From here you can open the app on your machine at 'localhost:3000'.

- How do I use this thing then?

Well, if you're running on localhost, you'll be playing alone.  But you can start tables and explore the setup on localhost.  There you can check out the various dice sets we have available, see what chatting is like, and maybe save a roll or two.

If you're ready to try a table with friends, you can visit the site below and invite some friends.

roll-for-init.herokuapp.com

Any feedback on the app is welcome!

- What bricks did you use to build this?

Thanks for asking!  I built a Ruby on Rails app using a PostgreSQL database.  From there I worked in a React front end.  Everything was made pretty with a lot of custom CSS built on a Skeleton base.  Most of all I used a lot of love (and a bit of sarcasm).

Author:
Thomas Wilson

Special Thanks:
Sebastian Kopp, who kicked me in this direction
Kylee Acker, who taught me to enjoy CSS
Dave MacMurtrie, who was always a positive influence on my code
