const { Router } = require('express');
const router = Router();

router.get('/', (req, res) => {
    res.json({ mensaje: 'Todo funcionando' });
});

module.exports = router;