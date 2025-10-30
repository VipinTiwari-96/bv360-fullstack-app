import User from '#models/user'

export class UserService {
  static async getUser() {
    const res = await User.query().where('email', 'pooja@gmail.com').first()
    return res
  }
}
