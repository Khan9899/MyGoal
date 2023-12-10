


import Foundation

// class to register each user with unique identifier and save it into an array
class userProfile: Identifiable {
    let id: UUID = UUID()
    let name: String = ""
    let emailAddress: String = ""
    let passWord: String = ""

     init(name: String, emailAddress: String, password: String) {
        self.id = UUID()
        self.name = name
        self.emailAddress = emailAddress
        self.password = password
    }

     func createGoal(goal: String) {
        goals.append(goal)
    }

    
}

// function to validate the email and password to log in
// the email and password taken from the userProfile class
// Function to validate the email and password to log in
func validateLogin(email: String, password: String, userProfiles: [UserProfile]) -> Bool {
    for userProfile in userProfiles {
        if userProfile.emailAddress == email && userProfile.password == password {
            return true  // Login successful
        }
    }
    return false  // Login failed
}






