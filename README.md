# Akuma

[expectation](EXPECTATIONS.mdown)

## Demo Setup

You need to set up the development database

  ```sh
  > rake db:create db:migrate
  ```

Seed data

  ```sh
  > rake db:seed
  ```

  will create default Users: Dune, HarryPotter and Lebowski and assign tasks for them

Train prediction model and affiliation for each user with:

   ```sh
   > rake affilation:calculate
   ```

Start server with

  ```sh
  > rails s
  ```

In `rails console` you can use `gem 'akuma-client'` to manage data.

  ```sh
  # Akuma will automatically assign a most fitting task for person
  > Akuma::Client::Assign.where(person_id: 1).create
  ```

## Task fit calculation

Akuma calculates affiliations for each person using the Naive Bayes algorithm. Akima will count `fit` coefficient as a prediction percentage for each person multiply on `life_time` of tasks. Tasks sorted for each person separately by `fit`. When creating assignments Copilot class chooses the oldest task with a maximum fit for the assignee person.

## Next Steps

1. Build end2end tests with cucumber for checking user scenarios
2. Make model training and testing pipeline for checks model effectively
3. Current Model don't uses text steaming. It will have less prediction power with languages like Russian or German with `words declension`
4. Using [TF-IDF](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) algorithm will increase model prediction power
