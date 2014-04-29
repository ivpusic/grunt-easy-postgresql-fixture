# grunt-easy-postgresql-fixture

> Grunt task for easy-postgresql-fixture plugin. It helps to you load and save you fixtures

For more information about functionalities of this task please look at [easy-postgresql-fixture](https://github.com/ivpusic/easy-postgresql-fixture) and [easy-fixture](https://github.com/ivpusic/easy-fixture) repositories.

## Getting Started

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-easy-postgresql-fixture --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-easy-postgresql-fixture');
```

# use case

Let we say that you have database with state which is pretty good to be fixture data. In that case you would like to 'freeze' database state and save it to file, and you want to be able to reset database state on that state each time when you want. `easy-postgresql-fixture` will help you with that. 

I am using something like this in my project:
```
grunt.registerTask('fixtures:load', ['easy_mongo_fixture:load', 'easy_postgresql_fixture:load']);
grunt.registerTask('fixtures:save', ['easy_mongo_fixture:save', 'easy_postgresql_fixture:save']);
```

So each time when I want reset databases state to some previous one I just need to run `grunt fixtures:load`, and if current database state is appropriate to be fixture seed, I can save current state with ``grunt fixtures:save`` command. After this command fixture files will be generated for you. Of course you can update generated fixture files by hand, and then run `grunt fixtures:load` command to populate data with newly added fixture records. Enjoy :)

## The "easy_postgresql_fixture" task

### Overview
In your project's Gruntfile, add a section named `easy_postgresql_fixture` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  easy_postgresql_fixture: {
    options: {
      database: 'test'
    },
    action: 'load'
    }
  }
});
```

### Options

#### options.database
**Required**
Type: `String`

Database for work with

#### options.dir
Type: `Path`
Default value: `'Current directory'`

Directory in which fixture data will be saved if running `save` action,
or in case or `load` action, directory from which fixture data will be loaded into database.

#### options.out
Type: `String`
Default value: `'backup.sql'`

Filename in which fixture data will be saved (case for `save` action), or filename from which data will be loaded and saved into database (case for `load` action).

### Actions

#### action
Type: `String`
**Required**

Action to execute. Either `save` or `load`.

### Usage Examples


```js
  grunt.initConfig({
    easy_postgresql_fixture: {
      load: {
        options: {
          database: 'test',
          dir: './fixtures',
          out: 'backup.sql'
        },
        action: 'load'
      },

      save: {
        options: {
          database: 'test',
          dir: './fixtures',
          out: 'backup.sql'
        },
        action: 'save'
      },
    }
  });
```
