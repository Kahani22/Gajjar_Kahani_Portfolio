// this is a partially revealing module pattern - just a variation on what we've already done
(() => {
    // get the user buttons and fire off an async DB query with Fetch
    console.log("fired!");

    var myIndex = 0;
    carousel();

    function carousel() {
    var i;
    var x = document.getElementsByClassName("slide");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 1000); 
    }

})();