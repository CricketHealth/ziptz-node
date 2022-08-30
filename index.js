const tz = require('./data/tz.json');

module.exports = {
  getTimezoneForZipCode: function(zip) {
    if (tz.hasOwnProperty(zip)) {
      return tz[zip];
    }
    return null;
  },
};