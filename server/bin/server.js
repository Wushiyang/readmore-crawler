const express = require('express')
const app = new express()

const bodyParser = require('body-parser')
const api = require('../api/index')


// const connect = mysql.createConnection(databaseConfig)

// connect.connect()

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use('/api', api)

app.listen(8000)