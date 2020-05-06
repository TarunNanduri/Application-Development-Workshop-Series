function submitForm() {
    const name = $("#nameField")[0].value;
    const email = $("#emailField")[0].value;
    const message = $("#messageField")[0].value;
    console.log(name, email, message);
    httpGet(`http://localhost:5000/api/name/${name}/emailId/${email}/message/${message}`);
}

function httpGet(theUrl) {
    const xmlHttp = new XMLHttpRequest();
    xmlHttp.open("GET", theUrl, false); // false for synchronous request
    xmlHttp.send(null);
    console.log(xmlHttp);
    return xmlHttp.responseText;
}


function mspDemo() {
    console.log("Hello MSP..");
    let a = {};
    console.log("initial");
    console.log(a);
    a.name = "Farhan";
    console.log("final");
    console.log(a);
}