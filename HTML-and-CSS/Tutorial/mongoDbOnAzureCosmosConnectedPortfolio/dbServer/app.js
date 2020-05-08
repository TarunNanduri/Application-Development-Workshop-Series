const express = require("express");
const app = express();
const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');
const url = "<your mongoDB connection string>";
const dbName = "mspDemoDB";

app.get('/api/name/:name/emailId/:emailId/message/:message', (req, res) => {
    res.send(insertEntry(req.params.name, req.params.emailId, req.params.message));
})

app.get('/api/docx', (req, res) => {
    getAllRegistrations();
    res.send("Check console");
})

app.listen(5000, () => console.log("express app listening for requests"));

function insertEntry(name, emailId, message) {
    const client = getMongoClient();
    let result = {ping: "This is result obj"};
    client.connect(function (err) {
        assert.equal(null, err);
        console.log("Connected successfully to server");
        const db = client.db(dbName);
        console.log(name, emailId, message);
        db.collection("testCollection").updateOne({name: name, emailId: emailId},
            {$set: {message: message}}, {upsert: true}, (err, res) => {
                if (err) {
                    result.code = -1;
                    result.msg = "Could't update entry.";
                    result.err = err;
                } else {
                    result.code = 0;
                    result.msg = "Successfully updated entry."
                }
            });
        closeMongoClient(client);
    });
    return result;
}

function getMongoClient() {
    return new MongoClient(url);
}

function closeMongoClient(client) {
    client.close();
}

function getAllRegistrations() {
    const client = getMongoClient();
    client.connect(function (err) {
        assert.equal(null, err);
        console.log("Connected successfully to server");
        const db = client.db(dbName);
        db.collection("testCollection").find({}).toArray((err, res) => {
            if (err) {
                console.log(err);
            } else {
                console.log(res);
            }
        });
        closeMongoClient(client);
    });
}
