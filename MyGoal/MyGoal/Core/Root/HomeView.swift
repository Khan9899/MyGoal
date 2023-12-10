

import SwiftUI

struct HomeView: View {
    var body: some View {
           
            VStack {

                    HomeButton(buttonName: "Create Goal", buttonAction: {
                        print ("Create Goal being Pressed...")
                    })
                    .padding()
                    HomeButton(buttonName: "Today's Task", buttonAction: {
                        print ("Today Task being Pressed...")
                    })
                    
                    Spacer()
                    Spacer().padding(.top, 20)
                   
                }
            .frame(width: 350, height: 780, alignment: .top) // Adjust width and height as needed
            .background(Color.black)
            .cornerRadius(10)

            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}




