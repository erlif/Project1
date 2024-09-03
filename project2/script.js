var countDownDate = new Date("Oct 16, 2024 00:00:00").getTime();
var x = setInterval(function () {
    var now = new Date().getTime();
    var distance = countDownDate - now;

    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    document.getElementById("days").innerHTML = days;
    document.getElementById("hours").innerHTML = hours;
    document.getElementById("minutes").innerHTML = minutes;
    document.getElementById("seconds").innerHTML = seconds;

}, 1000);

$(document).ready(function () {
    $.ajax({
        url: "https://jsonplaceholder.typicode.com/photos", success: function (result) {
            // console.log(result[10000])
            // console.log(result[1].id)
            // $(".dks").attr("src", result[9].thumbnailUrl)
            for (let index = 0; index < 10; index++) {
                const element = result[index];
                var kj = index +1;
                // $(".kd").append("src",element.thumbnailUrl)
                $(".kd-" + kj).attr("src",  element.thumbnailUrl );



            
            }
        

            for (let index = 0; index < 5; index++) {
                const element = result[index];
                var kg = index + 1;
                $(".utb" + kg).append(element.title);
                
            }      
        }
    });
});



$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
  });
