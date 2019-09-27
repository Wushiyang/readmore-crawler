const express = require('express')
const router = express.Router()

router.use('/', (req, res, next) => {
    next()
})

router.get('/', (req, res) => {
    res.end('获取章节')
})

router.put('/', (req, res) => {
    res.end('更新章节')
})

router.delete('/', (req, res) => {
    res.end('删除章节')
})

router.post('/', (req, res) => {
    res.end('添加章节')
})

router.patch('/', (req, res) => {
    res.end('更新章节部分字段')
})

module.exports = router