# README

# online_forum
  User Online Forum.
  - User can post questions.
  - User can comment on a question.
  - User can reply to a comment.

**Installation**
  - MySQL Database
  - Ruby version 2.6.3
  - Rails version 6.0.2

**Setting up**
1. Clone the Repository

2. Run the command to install gem dependencies in rails project folder:
```bash
bundle install
```

3. Next, run these commands to migrate records and populate the database with seeds.rb:
```bash
bundle exec rails db:create db:migrate db:seed
```

4. Next start the server with the following command:
```bash
rails s
```

5. Rails server is up and running now.

6. You can get the credentials from seed.

**BDD TestCases**
1. Login Feature
```bash
cucumber features/login.feature
```
