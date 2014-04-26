/*
 * grunt-easy-postgresql-fixture
 * https://github.com/ivpusic/grunt-easy-postgresql-fixture
 *
 * Copyright (c) 2014 Ivan Pusic
 * Licensed under the MIT license.
 */

'use strict';

var fixture = require('easy-fixture'),
  PostgresFixture = require('easy-postgresql-fixture');

module.exports = function (grunt) {

  grunt.registerMultiTask('easy_postgresql_fixture', 'Grunt task for easy-postgresql-fixture plugin. It helps to you load and save you fixtures', function () {
    var collections = this.data.collections,
      action = this.data.action,
      options = this.options(),
      postgresFixtrue;

    if (!options.database) {
      grunt.fail.fatal('No database provided!');
    }

    if (!action) {
      grunt.fail.fatal('No action provided!');
    }

    // init postgresFixtrue
    postgresFixtrue = new PostgresFixture(options);
    fixture.use(postgresFixtrue);

    // task will be async
    var done = this.async();

    // run defined action
    return fixture[action]().then(function () {
      grunt.log.ok(action + ' fixture OK');
      done();
    }).fail(grunt.fail.fatal).
    finally(function () {
      // remove managers from fixture object
      fixture.clear();
    }).done();
  });
};
