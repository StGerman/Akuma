# Akuma

## Demo Setup

1. You need to setup development database `> rake db:create db:migrate`
2. Seed data `> rake db:seed` will create default Users: Dune, HarryPotter and Lebowski and assign tasks for them
3. Train prediction model and affiliation for each user with `rake affilation:calculate`
4. Start server with `rails s`
5. In rails console you cat use `Akuma::Client` to manage data. For example you cat assign task with `Akuma::Client::Assign.where(person_id: 1).create`. Akuma will automatically assign most fitting task for person

## Fit value calculation

Akuma calculate affilation for each person using Naive Bayes algorithm. Akima will count `fit` coeficent as a prediction percentqage for each person multiply on `life_time` of tasks. Tasks sorted for each person sepatatly by `fit`. When creating assignments Copilot class choose max age task with maximum fit for assigne person.

## Next Steps

1. Build end2end tests with cucumber for checking user scenarios
2. Make model training and testing pipeline for checks model effectivety
3. Current Model don't use text steaming. It will have less prediction power with languages like Russian or German with `words declension`
4. Change Naive Bayes to [TF-IDF](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) algoritm
