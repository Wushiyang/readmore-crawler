const express = require('express')
const router = express.Router()

router.use('/', (req, res, next) => {
    next()
})

router.get('/', (req, res) => {
    res.end('获取会话信息')
})

router.put('/', (req, res) => {
    res.end('更新会话，延长会话时效')
})

router.delete('/', (req, res) => {
    res.end('退出登录')
})

router.post('/', (req, res) => {
    res.end('登录')
})

module.exports = router