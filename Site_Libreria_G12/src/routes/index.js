var express = require('express');
var router = express.Router();
const {index, search, about, contact, legal, newsteller} = require('../controllers/indexController');

/* home */
router
    .get('/', index)
    .get('/result', search)
    .get('/about',about)
    .get('/contact',contact)
    .get('/legal',legal)
    .get('/newsteller',newsteller)
module.exports = router;

