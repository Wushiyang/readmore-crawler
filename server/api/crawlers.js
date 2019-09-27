const express = require('express')
const router = express.Router()

router.use('/', (req, res, next) => {
    next()
})

router.get('/', (req, res) => {
    res.end('获取爬虫信息')
})

router.put('/', (req, res) => {
    res.end('更新爬虫')
})

router.delete('/', (req, res) => {
    res.end('删除爬虫')
})

router.post('/', (req, res) => {
    res.end('添加爬虫')
})

router.patch('/', (req, res) => {
    res.end('更新爬虫部分字段')
})

module.exports = router