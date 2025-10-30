import type { HttpContext } from '@adonisjs/core/http'

export default class UsersController {
  user = ({ auth, response }: HttpContext) => {
    try {
      const user = auth.user

      return response.ok({
        success: true,
        user,
      })
    } catch (error) {
      return response.internalServerError({
        success: false,
        message: 'Something went wrong while fetching user.',
      })
    }
  }

  userDashboard = async ({ auth, response }: HttpContext) => {
    try {
      const user = auth.user
      const projects = await user?.related('projects').query()
      return response.ok({
        success: true,
        projects,
      })
    } catch (error) {
      return response.internalServerError({
        success: false,
        message: 'Something went wrong while fetching user.',
      })
    }
  }
}
