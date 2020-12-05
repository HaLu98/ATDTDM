const router = require('express').Router();
const khachhangController = require('../controllers/khachhangController');
router.get('/', khachhangController.list);
router.post('/add', khachhangController.save);
router.get('/update/:MAKH', khachhangController.edit);
router.post('/update/:MAKH', khachhangController.update);
router.get('/delete/:MAKH', khachhangController.delete);
module.exports = router;

