import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLogged = false

    var body: some View {
        if isLogged {
            Text("Welcome, \(username)!")
        } else {
            VStack {
                Image("your_logo_image")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Log In") {
                    // Add your authentication logic here
                    // For a simple example, let's check if the username and password are both "admin"
                    if username == "admin" && password == "admin" {
                        isLogged = true
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
