<<<<<<< HEAD
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

#### options.host
Type: `String`
Default value: `'127.0.0.1'`

Database host

#### options.port
Type: `Number`
Default value: `27017`

Database port

#### options.username
Type: `String`
Default value: `''`

Username for authentication

#### options.password
Type: `String`
Default value: `''`

Password for authentication

#### options.database
**Required**
Type: `String`

Database for work with

#### options.dir
Type: `Path`
Default value: `'Current directory'`

Path on which fixture data will be saved if running `save` action,
or in case or `load` action, path from which fixture files will be loaded into database.

#### options.override
Type: `Boolean`
Default value: `false`

If fixture data already exist, override or not?

### Collections

#### collections
Type: `Array`
**Required**

Array of collections to work with.

### Actions

#### action
Type: `String`
**Required**

Action to execute. Either `save` or `load`.

### Usage Examples


```js
  grunt.initConfig({
    // Configuration to be run (and then tested).
    easy_postgresql_fixture: {
      load: {
        options: {
          database: 'ivpusic',
          dir: '/home/ivpusic/projects/bidding/server/modules/grunt-easy-postgresql-fixture',
          out: 'backup.sql'
        },
        action: 'load'
      },

      save: {
        options: {
          database: 'ivpusic',
          dir: '/home/ivpusic/projects/bidding/server/modules/grunt-easy-postgresql-fixture',
          out: 'backup.sql'
        },
        action: 'save'
      },
    }
  });
```