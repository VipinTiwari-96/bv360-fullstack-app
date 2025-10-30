import type { HttpContext } from '@adonisjs/core/http'

export default class UsersController {
  user = ({ auth }: HttpContext) => {
    return auth.user
  }

  userDashboard = async ({ auth }: HttpContext) => {
    const user = auth.user
    const projects = await user?.related('projects').query()
    return projects
  }
}
