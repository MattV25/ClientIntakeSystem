function empty() {
    var username,password;
    username = document.getElementById("username").value;
    password = document.getElementById("password").value;
    if (username == "") {
        alert("Enter a valid username.");
        return false;
    }
    if(password == ""){
    	alert("Enter a valid password.");
    	return false;
    }
}