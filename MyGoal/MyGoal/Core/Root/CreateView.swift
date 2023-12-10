

import SwiftUI

struct CreateView: View {
    @State  var goalName: String = ""
    @State  var descriptionfield: String = ""
    @State  var dateStarting: Date = Date()
    
    var body: some View {

        ZStack {
            
            VStack {
                
                    Text("CREATE GOAL")
                        .bold()
                        .foregroundColor(.red)
                    
                    goalNameField
                    descriptionName
                    descriptionview
                    Form {
                        DatePicker("Starting Date", selection: $dateStarting,
                                   in: Date()...,
                                   displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        .cornerRadius(10)
                        Text("Beginnig date")
                    }
                    Spacer()
                }
            .padding()
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}



private extension CreateView {
    var descriptionview: some View {
        TextEditor(text: $descriptionfield)
            .frame(height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.2), lineWidth: 4))
    }
    
    var descriptionName : some View {
        Text ("Why do you want to achieve?")
            .foregroundColor(.red)
    }
    
    var goalNameField: some View {
        TextField("What is the name of Goal", text: $goalName)
            .frame(width: 320)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.2), lineWidth: 4))
//            .background(Color.gray.cornerRadius(10))
    }
}
