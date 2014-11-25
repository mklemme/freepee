// //required by default
// // var freePee = {};

// // freePee.getLocation=function() {
// // 
// // }


// // engine();
// function engine() {
//   setTimeout(getLocation, 1500);
//   $("#launchButton").hide();
//   $("#modal-close").click();
//   $("#note").html("<img src='/images/asset-loading-walking_man.gif' class='scaling-img'>");
//   $("#loading-text").innerHTML("Please hold on...we're finding your location...");
// }
// //find lat lon location by address input
// function customLocation() {
//   $("#launchButton").hide();
//   $("#modal-close").click();
//   var geocoder = new google.maps.Geocoder();
//   var address = $("#exampleInputPassword2.form-control").val();
//   geocoder.geocode({ 'address': address }, function (results, status) {
//       if (status == google.maps.GeocoderStatus.OK) {
//           setTimeout(getLocation, 1500);
//           var lat = results[0].geometry.location.lat();
//           var lon = results[0].geometry.location.lng();
//           findClosest(lat, lon);
//       $("#note").html("<img src='/images/asset-loading-walking_man.gif' class='scaling-img'>");
//       } else {
//           alert("Request failed - please enter a valid address.");
//       }
//     });
//   }
//   // reverseGeo(data);
//   // render gif

// var x = document.getElementById("note");
// //finding geolocation and sentting text at top of page based on results, calling the showPosition function which gets coords
// function getLocation() {
//     if (navigator.geolocation) {
//         navigator.geolocation.getCurrentPosition(showPosition, showError);
//     } else {
//         x.innerHTML = "We're sorry, your geolocation is not supported by this browser. Please enter your current address";
//     }
// }

// //finding coords, calling other functions
// function showPosition(position) {
//     var lat = position.coords.latitude;
//     var lon = position.coords.longitude;
//     var latlon = position.coords.latitude + "," + position.coords.longitude;
//     console.log("lat: "+lat);
//     console.log("lon: "+lon);
//     findClosest(lat, lon);
// }

// function showError(error) {
//     switch(error.code) {
//         case error.PERMISSION_DENIED:
//             x.innerHTML = "We're sorry, you have denied the request for Geolocation. Please enter your address, we'll search using that.";
//             break;
//         case error.POSITION_UNAVAILABLE:
//             x.innerHTML = "We're sorry, your location information is unavailable. Please enter your address, we'll search using that.";
//             break;
//         case error.TIMEOUT:
//             x.innerHTML = "We're sorry, the request to get your location timed out. Please enter your address.";
//             break;
//         case error.UNKNOWN_ERROR:
//             x.innerHTML = "We're sorry, we were unable to locate you. Please enter your address, we'll search using that.";
//             break;
//     }
// }

// function findClosest(lat, lon){
//   // console.log("here's the lat long GLOBAL"+lat +lon);
//     $.ajax({
//       type: "POST",
//       url: "/loos/foursquare",
//       data: {
//         'fs_data':{
//           'lat' : lat,
//           'lon' : lon
//         }
//       },
//       success:function(msg){
//         // document.body.innerHTML(msg)
//         $( "html" ).html( msg );
//       },

//       error:function(errormessage){
//         console.log("Error");
//         console.log(errormessage);
//       }

//     });
// }
