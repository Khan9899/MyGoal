
import SwiftUI

struct HomeButton: View {
    var buttonName: String = ""
    var buttonAction: () -> Void
    
    var body: some View {
        Button(action: {
            buttonAction()
            print("Button Pressed...")
        }) {
            Text(buttonName)
                .font(.system(size: 20, weight: Font.Weight.semibold))
                .padding(.vertical, 10)
                .padding(.horizontal, 30)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray.opacity(0.8), lineWidth: 1)
                )
                .foregroundColor(.gray)
        }
    }
}


struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(buttonName: "Name", buttonAction: {
            // Action for preview
        })
    }
}



