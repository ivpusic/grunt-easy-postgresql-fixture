/*
 * grunt-easy-postgresql-fixture
 * https://github.com/ivpusic/grunt-easy-postgresql-fixture
 *
 * Copyright (c) 2014 Ivan Pusic
 * Licensed under the MIT license.
 */

'use strict';

module.exports = function (grunt) {

  // Project configuration.
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

  // Actually load this plugin's task(s).
  grunt.loadTasks('tasks');


  // By default, lint and run all tests.
  grunt.registerTask('fixture:save', ['easy_postgresql_fixture:save']);
  grunt.registerTask('fixture:load', ['easy_postgresql_fixture:load']);
};
