# bpc-rails-demo

## General

### dokku

#### add remote
```
git remote add dokku dokku@billclaytor.com:bpc-rails-demo
```

#### push
```
git push dokku main:master
```


#### rails console
```
dokku run bpc-rails-demo bundle exec rails c
```

#### tail logs
```
dokku logs bpc-rails-demo -t
```

###

#### seed and migrate database
```
dokku run bpc-rails-demo bundle exec rake db:migrate db:seed RAILS_ENV=production
```

#### just migrate database
```
dokku run bpc-rails-demo bundle exec rake db:migrate RAILS_ENV=production
```

### books

#### delete
```
# rails console
Book.delete_all
```

#### destroy all!!!
```
# rails console
Book.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('books')
```

### authors

#### delete
```
# rails console
Author.delete_all
```

#### destroy all!!!
```
# rails console
Author.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('authors')
```

## Issue Notes

## 1-create-rails-project-and-deploy-to-dokku

### Rails

1. Create the Rails project:
```
rails new bpc-rails-demo -d=postgresql
```

2. Update database.yml per environment

3. Create the database(s):
```
rails db:create
```

4. Add linux platform:
```
bundle lock --add-platform x86_64-linux
```

### Dokku

##### Set up the Dokku host

Note: These steps assume that Dokku is currently running in the production environment.

0. If not already installed, install the postgres plugin:
```
# on the Dokku host
# install the postgres plugin
# plugin installation requires root, hence the user change
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git
```

1. Create the app
```
# on the Dokku host
dokku apps:create bpc-rails-demo
```

2. Create the postgres service (production database):
```
# on the Dokku host
dokku postgres:create bpc_rails_demo_production
```

##### Set up the local environment and push to Dokku

Note: These steps assume that SSH has been configured for the Dokku production environment. 

1. Add the git remote:
```
# on the local machine
git remote add dokku dokku@billclaytor.com:bpc-rails-demo
```

2. Push `main` to the Dokku `master`:
```
# on the local machine
git push dokku main:master
```

##### Continue Dokku setup

1. Link the postgres service to the app:
```
# on the Dokku host
dokku postgres:link bpc_rails_demo_production bpc-rails-demo
```

2. Run migrations:
```
# on the Dokku host
dokku run bpc-rails-demo bundle exec rake db:migrate db:seed RAILS_ENV=production
```

3. Add a different domain (default is bpc-rails-demo.billclaytor.com):
```
# on the Dokku host
dokku domains:add bpc-rails-demo demo.billclaytor.com
```

##

## 4-set-up-testing-and-linting-tools

### rubocop

After adding the gems and running bundle install, generate the config and todo:
```
rubocop --auto-gen-config
```

##

## 3-add-author-and-book-entities

1. Generate the scaffolds

```
rails g scaffold Author name:string bio:text
rails g scaffold Book title:string summary:text publication_year:integer author:references
```

2. Update the migrations (see commit)

3. Run the migrations:
```
rails db:migrate
```

## 11-add-author-and-book-images-for-seed-data

* Create the migrations
```
rails g migration AddImagePathToAuthor
rails g migration AddImagePathToBook
```

* Destroy all records (rails console)

Books
```
Book.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('books')
```

Authors
```
Author.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('authors')
```

## 15-enable-and-require-log-in

### Install and configure Devise
https://www.digitalocean.com/community/tutorials/how-to-set-up-user-authentication-with-devise-in-a-rails-7-application

* add trackable

## 20-ensure-local-and-github-tests-and-linting-run-successfully

* update rails
had to remove gemfile lock

* run github workflows locally
https://github.com/nektos/act

* update bundle for linux
```
bundle lock --add-platform x86_64-linux
```

* update workflow
https://boringrails.com/articles/building-a-rails-ci-pipeline-with-github-actions/