const express = require('express')
const router = express.Router()
const books = require('./books')
const chapters = require('./chapters')
const crawlers = require('./crawlers')
const sessions = require('./sessions')
const users = require('./users')

router.use('/', (req, res, next) => {
    next()
})
router.use('/books', books)
router.use('/chapters', chapters)
router.use('/crawlers', crawlers)
router.use('/sessions', sessions)
router.use('/users', users)

module.exports = router