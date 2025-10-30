import UsersController from '#controllers/users_controller'
import { middleware } from '#start/kernel'
import router from '@adonisjs/core/services/router'

router.get('/user', [UsersController, 'user']).use(middleware.auth()).prefix('/api')
router.get('/dashboard', [UsersController, 'userDashboard']).use(middleware.auth()).prefix('/api')
