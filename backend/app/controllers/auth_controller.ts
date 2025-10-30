import User from '#models/user'
import type { HttpContext } from '@adonisjs/core/http'
import hash from '@adonisjs/core/services/hash'

export default class AuthController {
  signup = async ({ request, response }: HttpContext) => {
    const { full_name, email, password } = request.body()
    const existedUser = await User.findBy('email', email)

    if (existedUser) {
      return response.conflict({ message: 'Email already exists.' })
    }

    const user = await User.create({ fullName: full_name, email, password })
    return response.created({ message: 'User created successfully', user })
  }

  login = async ({ request, response }: HttpContext) => {
    const { email, password } = request.body()
    const user = await User.findBy('email', email)

    if (!user) {
      return response.unauthorized({ message: 'Invalid credentials.' })
    }

    const isValid = await hash.verify(user.password, password)

    if (!isValid) {
      return response.unauthorized({ message: 'Invalid credentials.' })
    }

    const token = await User.accessTokens.create(user)
    return token
  }

  logout = async ({ response, auth }: HttpContext) => {
    const user = auth.user
    await User.accessTokens.delete(user!, user!.currentAccessToken.identifier)
    return response.ok({ message: 'Logged out successfully.' })
  }
}
