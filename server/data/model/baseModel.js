const mysql = require('mysql')
const databaseConfig = require('../../config/database.json')


export default class BaseModel{
    constructor(){

    }

    _init(){
        const connect = mysql.createConnection(databaseConfig)

    }
    
    select(){

    }

    update(){

    }

    delete(){

    }

    insert(){

    }
}
