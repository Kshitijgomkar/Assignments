function validateForm(){
       
        var messages = [];
        var checkB = document.Myform.Reading.checked || document.Myform.Movies.checked || document.Myform.Photography.checked;
        if (checkB == true){
        } else {
            messages.push("Please select atleast one hobby.");
        }
        if (document.Myform.firstName.value=="")
        {
            messages.push("Please fill in your first name.");
            document.getElementById('firstName').style.border="1px solid red";
        }
        if (document.Myform.lastName.value=="")
        {
            messages.push("Please fill in your last name.");
            document.getElementById('lastName').style.border="1px solid red";
        }
        if (document.Myform.email.value=="")
        {
            messages.push("Please fill in your last name.");
            document.getElementById('email').style.border="1px solid red";
        }
        if (document.Myform.dob.value=="")
        {
            messages.push("Please fill in your last name.");
            document.getElementById('dob').style.border="1px solid red";
        }
        if (messages.length > 0) {
            alert(messages.join('\n'));
            return false;
        } else {
            return true;
        }    
       
}

function myFunction(){
    var checkBox = document.getElementById("Reading");
    var div = document.getElementById("chkverify");
    if (checkBox.checked === true) {
        div.style.display = "block";
    } else {
        div.style.display = "none";
    }
}




