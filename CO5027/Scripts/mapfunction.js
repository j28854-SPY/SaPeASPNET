function initMap() {
    var lcbcampuslocation = { lat: 4.885, lng: 114.931 };
    var twomilesaway = { lat: 4.888, lng: 114.939 };

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        center: lcbcampuslocation
    });

    var markercampus = new google.maps.Marker({
        position: lcbcampuslocation,
        map: map,
        draggable: true,
        title: 'Safety & Protective Equipment Shop'
    });

    var marker2milescampus = new google.maps.Marker({
        position: twomilesaway,
        map: map,
        draggable: true,
        title: '2 miles of area'
    });
}