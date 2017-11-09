const data = require('./yelp-wineries-yountville_ca_10_miles.json');

console.log('latitude, longitude')

// data.businesses.map(business => {
//   console.log(business.coordinates.latitude + "," + business.coordinates.longitude);
// });

data.businesses.map(business => {
  console.log("<a href='"+ business.url + "'>" + business.name + "</a>");
});
