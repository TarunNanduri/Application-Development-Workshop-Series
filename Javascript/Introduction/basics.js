function intro(){
    // For Commenting in js we use "//" symbol.

    //variable declaration
    //According to ES6 its recommanded to use let keyowrd to declare a variable
    let boolean = true;
    let integer = 10;
    let float = 10.12;
    let string = "This is a string";
    let undefinedVar = undefined;
    let nullVar = null;
    console.log("Printing all declared variables--" + " " , boolean  + ", " , integer + ", " , float 
    + ", " , string + ", " , undefinedVar + ", " , nullVar)

    //declaration of constant
    const constantVar = 10
    console.log("Constant is: ", constantVar)

    //declaration of objects

    let classRoom = {
        "noOfStudents": 50,
        "noOfTeachers": 8,
        "noOfBenches": 14,
        "className": "Computer Science"
    }
    console.log("declared obj classroom is:", classRoom)

    //we can declare objects of objects nested function calls etc 

    classRoom.student1 = {
        name: "Xyz",
        rollNo: "123"
    }
    console.log("updated obj classroom is:", classRoom)

    //please try various examples by yourself are learn

    //DOM manipulation
    //there are lot of methods to implement you can check w3 schools or mozillas official documentation
    //For example
    let h1Tag = document.createElement("h1")
    let h1TagContent = document.createTextNode("This h1 tag is created in DOM using js")
    h1Tag.appendChild(h1TagContent)
    document.body.insertBefore(h1Tag, h4)
}
intro()