## Connecting a website to a database

##### mongoDbOnAzureCosmosConnectPortfolio (pwd)
This directory consists of 2 folders
```
1. websiteServer
2. dbServer
```

##### websiteServer:-
This server is a nodejs express application on which the portfolio website run.
Any forms or inputs in these field collect the data as per our requirements.

The data collected is then sent through a http request to the dbServer (Database Server).
Please feel free to explore the ddServer for the format of URL that and request parameters.

##### dbServer:-
This server too is a nodejs express application that will receive http requests with data
as a part of its URL. The dbServer receives these request params (data), and formats it
to the required format(optional).

Our dbServer uses **MongoDB** (a NoSQL Database service hosted on Microsoft Azure's CosmosDB)

In ***app.js***, There are few important variables that you need to understand
    
1. ```url```: This variable needs the connection string of your MongoDB client.

2. ```dbName```: The name of your db in your MongoClient

3. ```MongoClient```: This is the instance of your connected mongoClient

Right now, both of these servers can run on your localhost when launched using command
```node app.js``` and ```node index.js``` for ddServer and websiteServer respectively.
The ports they run on can be changed according to your preferences.

When you close this repo and are ready to try this out, run ```npm install``` inside the **ddServer**
and **websiteServer**. This will install the project dependencies and will update them in a file called
```package.json```. This file consists of all the details and configuration of your project.

We'll post more resources here related to this so that you will be able to understand this application more clearly.
Happy Coding...!!!

 
    
