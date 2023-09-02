//
//  ContentView.swift
//  helloWorld1
//
//  Created by Ananya Tandel on 9/1/23.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World, this is Starry Night Over the Rhône by Vincent Van Gogh.")
                // make text bigger
                .font(.largeTitle)
            // add space between elements
                .padding()
            
            // show image
            Image("painting") // image from assets
                    // fit to screen
                    .resizable()
            // make painting stay rectangular
                    .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                            .clipShape(Circle()) // make the image a circle - code found from stack overflow
            // not able to make the painting fit as a full circle - it's only clipping the middle part of the image and i am not sure on how to fix it
                            .padding()
            
            Button(action: {
                // when the button is clicked
                // trying to print to console but it's not working
                print("the button is working")
            }) {
                Text("Click Me!")
                // adjusting appearance
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

