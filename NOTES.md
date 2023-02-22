# bpc-rails-demo

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

3. Link the postgres service to the app:
```
# on the Dokku host
dokku postgres:link bpc_rails_demo_production bpc-rails-demo
```

4. Add a different domain (default is bpc-rails-demo.billclaytor.com):
```
# on the Dokku host
dokku domains:add bpc-rails-demo demo.billclaytor.com
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
