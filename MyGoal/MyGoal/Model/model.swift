import Foundation

class UserManager: ObservableObject {
    static let shared = UserManager()
    @Published var users: [User] = []

    private init() {}

    struct User {
        var id: UUID // Add the id property
        var name: String
        var email: String
        var password: String
        var tasks: [String] // Add tasks property

        // Function to check if the provided password matches the user's password
        func isValidPassword(_ inputPassword: String) -> Bool {
            return password == inputPassword
        }
    }

    

    func registerUser(name: String, email: String, password: String, confirmedPassword: String) -> Bool {
        guard password == confirmedPassword else {
            // Passwords do not match
            return false
        }

        // Check if the email is already registered
        if users.contains(where: { $0.email == email }) {
            // Email already exists
            return false
        }

        let newUser = User(id: UUID(), name: name, email: email, password: password, tasks: [])
        users.append(newUser)

        // Registration successful
        return true
    }

    func loginUser(email: String, password: String) -> Bool {
        // Check if a user with the provided email exists
        if let user = users.first(where: { $0.email == email }) {
            // Check if the provided password matches the user's password
            return user.isValidPassword(password)
        }

        // User not found
        return false
    }

    func addTask(for userID: UUID, task: String) {
        if let index = users.firstIndex(where: { $0.id == userID }) {
            users[index].tasks.append(task)
        }
    }

    func removeTask(for userID: UUID, at index: Int) {
        if let userIndex = users.firstIndex(where: { $0.id == userID }) {
            users[userIndex].tasks.remove(at: index)
        }
    }
}

