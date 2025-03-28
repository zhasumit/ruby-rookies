### Hello world in rails

MVC 
- `/app/models/` models for db 
- `/app/views/` views for db 
- `/app/controllers/` controllers 
- `/config/routes.rb` : routes files

Hello World in Rails
- make a route in routes file 
- go to the controller and make a method for that #method_name
- router -> controller  -> models(DB) & views(userview)
                        

routes 
```ruby
Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'application#hello'
end
```


`application_controller` controller has methods 
```ruby
def hello
  render html: "Hello, world"
end
```


- `rails generate controller pages`  : generates controller pages 
- then create `/app/views/home.html.erb` : view file for html render
- the inside the home.html.erb write the hello world to render page



### Structure of rails application

- `app/assets` : static files 
- `app/assets/stylesheets/application.css` : global css 
- `app/channels` : real time communications 
- `app/controllers` : all the controllers (all inherit from application_controller)
- `app/helpers` : helpers for the views assistance 
- `app/javascript` : javascript is made available for the files 
- `app/javascript/application.js` : global js  
- `app/models` : all the models for db  
- `app/views/` : for views/frontend part
- `app/views/layouts` : for global or generic views
- `app/views/layouts/application.html.erb` : main skeleton <%= yield %>
- `config` : configuration files 
- `config/routes.rb` : routes for the application 
- `Gemfile.rb` : for the gems/packages of the application 
- `Gemfile.lock` : after bundle installing the gems  