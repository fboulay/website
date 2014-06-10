module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uncss: {
      dist: {
        options: {
          stylesheets  : ['/css/all.css'],
          ignoreSheets : ["http://fonts.googleapis.com/", "/css/all.min.css"],
          htmlroot : 'out'
        },
        files: {
          'out/css/all.min.css': ['out/**/*.html']
        }
      }
    },
    cssmin: {
      combine: {
        options: {
          keepSpecialComments: 0
        },
        files: {
          'out/css/all.min.css': ['out/css/all.min.css']
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-uncss');
  grunt.loadNpmTasks('grunt-contrib-cssmin');

  // Default task(s).
  grunt.registerTask('default', ['uncss', 'cssmin']);

};