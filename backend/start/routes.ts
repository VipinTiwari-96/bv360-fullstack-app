/*
|--------------------------------------------------------------------------
| Routes file
|--------------------------------------------------------------------------
|
| The routes file is used for defining the HTTP routes.
|
*/

import './routes/user.js'
import './routes/auth.js'
import router from '@adonisjs/core/services/router'

router
  .post('/test', async ({ request, response }) => {
    const data = request.body()
    return response.ok({ message: 'JSON received successfully!', received: data })
  })
  .prefix('/api')
