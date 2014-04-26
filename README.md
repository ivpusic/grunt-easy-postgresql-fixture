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
