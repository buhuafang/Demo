Part A: create a  page
when you want create a page you should do as blew:
1. padrino g your_pages_child_path  # create your page's path like 127.0.0.1:3000/your_pages_child_path
2. bundle install # for create independence gem support.
3. padrino rake ar:create  # create datebase
4. padrino rake ar:migrate
5. padrino rake seed

with above commands, I can visit my first page within username and password which I register in step 5.

Part B: creating posts
1. create posts model,
2. migrate the database,
3. create the controller to allow the basic viewing functionality.
4. add routes in posts.rb
5. create views from two controller actions

