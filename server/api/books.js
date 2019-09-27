const express = require('express')
const router = express.Router()

router.use('/', (req, res, next) => {
    next()
})

router.get('/', (req, res) => {
    res.end('获取书籍')
})

router.put('/', (req, res) => {
    res.end('更新书籍')
})

router.delete('/', (req, res) => {
    res.end('删除书籍')
})

router.post('/', (req, res) => {
    res.end('添加书籍')
})

router.patch('/', (req, res) => {
    res.end('更新书籍部分字段')
})

module.exports = router