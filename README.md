Demo
====
Good good study Day day Up
followed books
預設是使用 Port 3000 和 development 環境，如果需要指定：'\n'

rails s -p 4000 -e production
命名路由Named Routes

Named Routes可以幫助我們產生URL helper如meetings_url或meetings_path，而不需要用{:controller => 'meetings', :action => 'index'}的方式：

get '/meetings' => 'events#index', :as => "meetings"
其中:as的部份就會產生一個meetings_path和meetings_url的Helpers，_path和_url的差別在於前者是相對路徑，後者是絕對路徑。一般來說比較常用_path方法，除非像是在Email信件中，才必須用_url提供包含Domain的完整網址。


Mounting Syntax

Padrino stores application mounting information by default within config/apps.rb. This file is intended to keep all information regarding what applications are mounted to which uri’s. An apps.rb file has the following structure:

Padrino.mount("blog").to("/blog")
Padrino.mount("website").to("/website")
Padrino.mount("app").to("/")

Advanced Mounting Support

In addition to the basic mounting capabilities afforded by Padrino for each application within a project, the Padrino::Router also allows for more advanced mounting conditions.

The Padrino::Router is an enhanced version of Rack::UrlMap which extends the ability to mount applications to a specified path, or specify host and subdomains to match to an application. For example, you could put the following in your config/apps.rb file:

# Adds support for matching an app to a host string or pattern
Padrino.mount("Blog").to("/").host("blog.example.org")
Padrino.mount("Admin").host("admin.example.org")
Padrino.mount("WebSite").host(/.*\.?example.org/)
Padrino.mount("Foo").to("/foo").host("bar.example.org")
This will configure each application to match to the given host pattern simplifying routing considerably.