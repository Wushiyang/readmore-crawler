const express = require('express')
const router = express.Router()

router.use('/', (req, res, next) => {
    next()
})

router.get('/', (req, res) => {
    res.end('获取用户信息')
})

router.put('/', (req, res) => {
    res.end('修改用户信息')
})

router.delete('/', (req, res) => {
    res.end('删除用户')
})

router.post('/', (req, res) => {
    res.end('添加用户')
})

router.patch('/', (req, res) => {
    res.end('修改用户部分信息')
})

module.exports = router