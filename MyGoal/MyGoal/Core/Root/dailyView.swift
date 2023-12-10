

import SwiftUI

struct dailyView: View {
    var body: some View {
        VStack {
            Text("Daily Tasks")
                .font(.title)
            .fontWeight(.bold)
            
            
            Text("(Tap to show Done)")
                .padding(.top, 20)
                .foregroundColor(.red)
            
            Form {
                Text("Study for 3 Hours")
                Text("Exercise for 30 minutes")
            }
            
            Button {
                
            } label: {
                Text("Done")
            }

            Spacer()
        }
    }
}

struct dailyView_Previews: PreviewProvider {
    static var previews: some View {
        dailyView()
    }
}
