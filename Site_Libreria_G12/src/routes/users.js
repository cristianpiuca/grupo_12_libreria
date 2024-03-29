const express = require('express');
const router = express.Router();
const {login, register, processRegister, loginUser, logout, profile, update,edit, admin, remove, userRol} = require('../controllers/userController')
const validations = require('../validations/registerValidations') 
const loginCheck = require('../validations/loginValidations')
const upload = require('../middlewares/multer')
const userValidator = require('../validations/usersValidations')
const {inSession, offSession} = require('../middlewares/sessionCheck')
const adminCheck = require('../middlewares/adminCheck')

/* /users*/
const { emailNodemailer } = require('../controllers/nodemailer')


router
    .get('/register', inSession ,register)
    .post('/register', validations, processRegister)
    .get('/login', inSession ,login)
    .post('/login',loginCheck, loginUser)
    .get('/logout', logout)
    .get('/profile/:id', offSession, profile)
    .get('/profileEdit/:id', offSession, edit) 
     .put('/update/:id',upload.single('image'),userValidator,update)
     .get('/admin',adminCheck, admin)
     .delete('/remove/:id',offSession, remove)
     .put('/updateUser/:id',offSession, userRol)
     .post('/send-email',emailNodemailer);

module.exports = router;
