// Defining variables that need to be available to some functions
var map, infoWindow;
var rendererOptions = {
    draggable: true
};
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
//Thay dia chi web
var endAddress = "10.77848,106.693589";
//Thay toa do
var lat = 10.77848, long = 106.693589;
window.onload = function () {
    //init direction
    directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
    // Creating a map
    var options = {
        zoom: 17,
        center: new google.maps.LatLng(lat, long),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById('map'), options);


    // Adding a marker
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(lat, long),
        map: map,
        title: 'Click me'
    });
    // Adding a marker


    google.maps.event.addListener(marker, 'click', function () {

        // Check to see if an InfoWindow already exists
        if (!infoWindow) {
            infoWindow = new google.maps.InfoWindow();
        }

        // Creating the content  
        var content = '<div class="box">' +
            '<h2>MIFA</h2>' +
            '<div class="wrap-mapbox">' +
                '<p>Địa chỉ: 8 Vạn Kiếp, P.10, Quận 5, Tp. Hồ Chí Minh</p>' +
                '<p>Phone: +84 - 08 - 38554517 - Hotline: 0918 844 408 (Mr. Quang)</p>' +
                '<p>Email: <a href="mailto:dntnminhphat1994@yahoo.com.vn">dntnminhphat1994@yahoo.com.vn</a></p>' +
            '</div>' +
        '</div>';

        // Setting the content of the InfoWindow
        infoWindow.setContent(content);

        // Opening the InfoWindow
        infoWindow.open(map, marker);

    });

    // Hiển thị thông tin
    google.maps.event.trigger(marker, 'click');

    directionsDisplay.setMap(map);
    directionsDisplay.setPanel(document.getElementById("directionsPanel"));
};

function calcRoute() {
    var start = document.getElementById("start").value;
    var end = endAddress;
    var request = {
        origin: start,
        destination: end,
        travelMode: google.maps.DirectionsTravelMode.WALKING
        //travelMode: google.maps.DirectionsTravelMode.BICYCLING
        //travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService.route(request, function (response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
        }
    });
}