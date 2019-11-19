# README

# Project MQ

Minimum Quantity or MQ is an app we came up with for working adults that want to order take-out but cant meet the min. order spending.
This app will allow users to tag-on to other users orders through posts.

## Wireframe

![Wireframe](https://github.com/datguyrhy/MQ/blob/master/Wireframe-and-ERD/wireframe.png)

## ERD
![ERD](https://github.com/datguyrhy/MQ/blob/master/Wireframe-and-ERD/Project3_MQ_ERD.png)

## Built With

* [Ruby on Rails](http://rubyonrails.org/) - The web framework used
* [postgresSQL](https://www.postgresql.org) - Dependency Management
* [bootstrap](https://getbootstrap.com)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

you will need the following to run this app

```
- Ruby on Rails v5.2.3
- postgresSQL
```
download/clone the repo by accessing your CLI and entering the following

```
git clone https://github.com/datguyrhy/MQ.git
```

### Installing

After downloading the repo you will need to point the CLI terminal to your cloned repo and

install the modules and dependencies by entering the following into your terminal.

```
bundle install
```

This will create the tables and seed them within your psql database

## Part 1 - Database / Schema / Models

### Create the database
Within this repo run the following to create the database
```
rails db:create
```
 **exact**
name, or you'll have trouble later on!

### Create a schema

This will automatically create the tables and schema.

```
rails db:migrate
```

the

```
rails db:seed
```

#Now that you have the tables seeded, you will need to start the app.

to run the app locally enter in the CLI

```
rails server
```

this will start the app which can be accessed by entering the following into your chrome browser

```
127.0.0.1:3000/ or localhost:3000/
```

This should bring you to the landing page.


## Running the app

There is a registration and login feature but this app.

You can view the Posts Index but once u choose to take part or join an order you will be prompted to sign up or login.



## Acknowledgments

* Thank you to our Team Siew Ling and Yi JIn for collaborating on this project.
* Thank you to Akira, Kenny and Wilfred for helping us out when we had bugs we could not fix.
* etc
