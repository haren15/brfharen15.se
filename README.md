# BRF Haren 15

This is the source code to the website <http://brfharen15.se>.

## Prerequisites

In order to run this site locally, the following has to be installed:

* [Ruby](https://www.ruby-lang.org/en/) - Install using [RVM](http://rvm.io/).
* Database - Preferably [SQLite](http://www.sqlite.org/).
* [ImageMagick](http://www.imagemagick.org/)

## Installation

Clone the repository:

```bash
$ git clone git@github.com:rejeep/haren.git
```

Enter the directory:

```bash
$ cd haren
```

Install the Ruby version and RVM gemset:

```bash
$ source .rvmrc
```

Install the dependencies:

```bash
$ bundle install
```

Migrate the database:

```bash
$ rake db:migrate
```

That's it!

## Usage

Start the application:

```bash
$ rails server
```

## Deployment
