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



<br>

ORM : Object relational mapper 
- maps the things from the ruby/rails code to postgresql qurery
- AcriveRecordMapper is used to map these translations


### Crud Scaffolding
- `rails generate scaffold table_name title:string description:text`
- invokes  active record and creates a migration mapping
- creates index, edit, show, new, other views, in `views/table_name`
- also makes test and bundler files for the db attribute 
- inside `db/migrate/` the last migration is the latest one
- in `app.controllers` a new controller is created 
- `schema.rb` in db is changed to include the migrations 

Routes checking
- `rails routes` : gives the routes for the app
- `rails routes --expanded` : routes beautified 


### Generate a single migration for models
- `rails generate migration migration_name`
- creates one migration file in the `db/migrate/` folder 
- `timestamp_migration_name.rb` is the name of the file
- 1 migration : 1 migration file 
- in case of editing the migration (`db:rollback`)
- the changes are made in `db/schema.rb` file
- create new migration file (since other devs get out of sync)
- if same migration is other devs donot know about that db:migrate
- they wont rollback the migration(specifically), so then better new one

### Models
- `model` : table in the database, made in `app/models`
- all models inherit from `application_record.rb`
```ruby
class Article < ApplicationRecord
end
```
- this is barebone code for table/model
- `rails c` for going to console
- then do Artcle.all to get all articles
- gives getters and setters for the model
```bash
❯ rails c
Loading development environment (Rails 8.0.2)
3.2.0 :001 > Article.all
  Article Load (20.7ms)  SELECT "articles".* FROM "articles" /* loading for pp */ LIMIT 11 /*application='AlphaBlog'*/
 => [] 
3.2.0 :002 > 
```
<br>
<br>
<br>
<br>

# CRUD 
## Create Table/models
### Create the rows in the table/model
- wanto create an artcle in the articles table
- `Article.create(title: "First article", description: "This is the description of the very first article")`
- or make an variable and add to the table 
```bash
3.2.0 :003 > Article.create(title: "First article", description: "This is the description of the very first article")
  TRANSACTION (0.2ms)  BEGIN /*application='AlphaBlog'*/
  Article Create (1.0ms)  INSERT INTO "articles" ("created_at", "updated_at", "title", "description") VALUES ('2025-03-30 13:15:38.073722', '2025-03-30 13:15:38.073722', 'First article', 'This is the description of the very first article') RETURNING "id" /*application='AlphaBlog'*/
  TRANSACTION (0.6ms)  COMMIT /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167f6c8f80
 id: 1,
 created_at: "2025-03-30 13:15:38.073722000 +0000",
 updated_at: "2025-03-30 13:15:38.073722000 +0000",
 title: "First article",
 description: "This is the description of the very first article"> 
3.2.0 :009 > 
```


### Using object to enter the rows into model
- `article = Article.new`
- article.title = "Second article"
- article.description = "desc of 2nd article"
- article.save

```bash
3.2.0 :005 > article = Article.new
 => 
#<Article:0x00007f167d60b540
... 
3.2.0 :006 > article.title="Second article"
 => "Second article" 
3.2.0 :007 > article.description="Desc of 2nd article"
 => "Desc of 2nd article" 
3.2.0 :008 > article.save
  TRANSACTION (0.1ms)  BEGIN /*application='AlphaBlog'*/
  Article Create (0.7ms)  INSERT INTO "articles" ("created_at", "updated_at", "title", "description") VALUES ('2025-03-30 13:21:33.775558', '2025-03-30 13:21:33.775558', 'Second article', 'Desc of 2nd article') RETURNING "id" /*application='AlphaBlog'*/
  TRANSACTION (4.5ms)  COMMIT /*application='AlphaBlog'*/
 => true 
3.2.0 :009 > 
```

- another way oneliner to do the same 
- article = Article.new(title: "Third article", description: "Desc of 3rd article")
- article.save

```bash
3.2.0 :012 > Article.all
  Article Load (0.7ms)  SELECT "articles".* FROM "articles" /* loading for pp */ LIMIT 11 /*application='AlphaBlog'*/
 => 
[#<Article:0x00007f167d68bba0
  id: 1,
  created_at: "2025-03-30 13:15:38.073722000 +0000",
  updated_at: "2025-03-30 13:15:38.073722000 +0000",
  title: "First article",
  description:
   "This is the description of the very first article">,
 #<Article:0x00007f167d68ba60
  id: 2,
  created_at: "2025-03-30 13:21:33.775558000 +0000",
  updated_at: "2025-03-30 13:21:33.775558000 +0000",
  title: "Second article",
  description: "Desc of 2nd article">,
 #<Article:0x00007f167d68b920
  id: 3,
  created_at: "2025-03-30 13:25:35.273114000 +0000",
  updated_at: "2025-03-30 13:25:35.273114000 +0000",
  title: "Third article",
  description: "Desc of 3rd article">] 
3.2.0 :013 > 
```
<br>
<br>
<br>
<br>

## Read 
- `rails console` / `rails c` : to open up the console
- `quit` to get out of the console

<br>

- `Article.all`: shows all the articles
- `Article.find(2)` : shows article of id:2
- `Article.first` : shows first article
- `Article.last` : shows last article
- `Article` is the class and we are referring to class
```bash
3.2.0 :014 > Article.find(2)
  Article Load (0.5ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = 2 LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d6012c0
 id: 2,
 created_at: "2025-03-30 13:21:33.775558000 +0000",
 updated_at: "2025-03-30 13:21:33.775558000 +0000",
 title: "Second article",
 description: "Desc of 2nd article"> 
3.2.0 :015 > Article.first
  Article Load (1.1ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" ASC LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d607f80
 id: 1,
 created_at: "2025-03-30 13:15:38.073722000 +0000",
 updated_at: "2025-03-30 13:15:38.073722000 +0000",
 title: "First article",
 description: "This is the description of the very first article"> 
3.2.0 :016 > Article.last
  Article Load (0.6ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" DESC LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d68b920
 id: 3,
 created_at: "2025-03-30 13:25:35.273114000 +0000",
 updated_at: "2025-03-30 13:25:35.273114000 +0000",
 title: "Third article",
 description: "Desc of 3rd article"> 
```

<br>
<br>


- article = `Article.all`, contains all articles
- article = `Article.find(2)`, variable contains article with id:2
- `article.title`, gives title, and similarly other attributes

<br>
<br><br>
<br>

## Update
- also we can update the attributes
- `article.description = "yada yada yada chitti chitti chat chat"`
- still the value is not changed, untill `article.save`
- after `article.save`, the choosen row is updated

```bash
3.2.0 :019 > article = Article.find(2)
  Article Load (0.4ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = 2 LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d60d200
... 
3.2.0 :020 > article
 => 
#<Article:0x00007f167d60d200
 id: 2,
 created_at: "2025-03-30 13:21:33.775558000 +0000",
 updated_at: "2025-03-30 13:21:33.775558000 +0000",
 title: "Second article",
 description: "Desc of 2nd article"> 
3.2.0 :021 > article.description = "Yada yada yada, chitti chitti chat chat"
 => "Yada yada yada, chitti chitti chat chat" 
3.2.0 :022 > article
 => 
#<Article:0x00007f167d60d200
 id: 2,
 created_at: "2025-03-30 13:21:33.775558000 +0000",
 updated_at: "2025-03-30 13:21:33.775558000 +0000",
 title: "Second article",
 description: "Yada yada yada, chitti chitti chat chat"> 
3.2.0 :023 > Article.find(2)
  Article Load (0.8ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = 2 LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d605a00
 id: 2,
 created_at: "2025-03-30 13:21:33.775558000 +0000",
 updated_at: "2025-03-30 13:21:33.775558000 +0000",
 title: "Second article",
 description: "Desc of 2nd article"> 
3.2.0 :024 > article.save
  TRANSACTION (0.3ms)  BEGIN /*application='AlphaBlog'*/
  Article Update (0.8ms)  UPDATE "articles" SET "updated_at" = '2025-03-30 13:42:11.270546', "description" = 'Yada yada yada, chitti chitti chat chat' WHERE "articles"."id" = 2 /*application='AlphaBlog'*/
  TRANSACTION (0.8ms)  COMMIT /*application='AlphaBlog'*/
 => true 
3.2.0 :025 > Article.find(2)
  Article Load (0.6ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = 2 LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d601900
 id: 2,
 created_at: "2025-03-30 13:21:33.775558000 +0000",
 updated_at: "2025-03-30 13:42:11.270546000 +0000",
 title: "Second article",
 description: "Yada yada yada, chitti chitti chat chat"> 
3.2.0 :026 > 
```

<br>
<br>
<br>
<br>

## Delete
- well in rails it is destroy
- `article = Article.last`, takes the article in variable
- `article.destroy`, deletes the article
- there is no need for `article.save`, deletes right away

```bash
3.2.0 :026 > article = Article.last
  Article Load (27.3ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" DESC LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d606e00
... 
3.2.0 :027 > article.destroy
  TRANSACTION (0.3ms)  BEGIN /*application='AlphaBlog'*/
  Article Destroy (1.1ms)  DELETE FROM "articles" WHERE "articles"."id" = 3 /*application='AlphaBlog'*/
  TRANSACTION (0.6ms)  COMMIT /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d606e00
 id: 3,
 created_at: "2025-03-30 13:25:35.273114000 +0000",
 updated_at: "2025-03-30 13:25:35.273114000 +0000",
 title: "Third article",
 description: "Desc of 3rd article"> 
3.2.0 :028 > Article.count
  Article Count (5.9ms)  SELECT COUNT(*) FROM "articles" /*application='AlphaBlog'*/
 => 2 
```

<br>
<br>

### Ruining the integrity 
- If there is nothing written in the model of article in `app/models/article.rb` 
- as we save the values there are no restrictions, can be saved with `nil`


```bash
3.2.0 :032 > article = Article.new
 => 
#<Article:0x00007f167d60a3c0
... 
3.2.0 :033 > article.save
  TRANSACTION (0.3ms)  BEGIN /*application='AlphaBlog'*/
  Article Create (1.3ms)  INSERT INTO "articles" ("created_at", "updated_at", "title", "description") VALUES ('2025-03-30 13:51:59.495354', '2025-03-30 13:51:59.495354', NULL, NULL) RETURNING "id" /*application='AlphaBlog'*/
  TRANSACTION (0.5ms)  COMMIT /*application='AlphaBlog'*/
 => true 
3.2.0 :034 > Article.last
  Article Load (0.9ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" DESC LIMIT 1 /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d609240
 id: 4,
 created_at: "2025-03-30 13:51:59.495354000 +0000",
 updated_at: "2025-03-30 13:51:59.495354000 +0000",
 title: nil,
 description: nil> 
3.2.0 :035 > 
```


<br>
<br>
<br>
<br>
<br>

- Deleted the last nil valued (no intigrity data)
```bash
3.2.0 :035 > Article.last.destroy
  Article Load (0.6ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" DESC LIMIT 1 /*application='AlphaBlog'*/
  TRANSACTION (0.2ms)  BEGIN /*application='AlphaBlog'*/
  Article Destroy (0.9ms)  DELETE FROM "articles" WHERE "articles"."id" = 4 /*application='AlphaBlog'*/
  TRANSACTION (13.5ms)  COMMIT /*application='AlphaBlog'*/
 => 
#<Article:0x00007f167d6811a0
 id: 4,
 created_at: "2025-03-30 13:51:59.495354000 +0000",
 updated_at: "2025-03-30 13:51:59.495354000 +0000",
 title: nil,
 description: nil> 
3.2.0 :036 > 
```

