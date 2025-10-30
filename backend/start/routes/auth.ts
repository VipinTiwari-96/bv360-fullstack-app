import AuthController from '#controllers/auth_controller'
import { middleware } from '#start/kernel'
import router from '@adonisjs/core/services/router'

router.post('/signup', [AuthController, 'signup']).prefix('/api')
router.post('/login', [AuthController, 'login']).prefix('/api')
router.post('/logout', [AuthController, 'logout']).use(middleware.auth()).prefix('/api')
