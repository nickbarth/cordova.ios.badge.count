var exec = require('cordova/exec');

var iOSBadgeSet = function(count, callback) {
  exec(callback, callback, 'iOSBadgeSet', 'iOSBadgeSet', [parseInt(count, 10)]);
};

module.exports = iOSBadgeSet;
