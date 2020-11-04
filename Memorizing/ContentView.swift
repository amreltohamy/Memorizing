//
//  ContentView.swift
//  Memorizing
//
//  Created by MacBook on 11/3/20.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            ForEach(0..<4){index in
                HStack{
                    ForEach(0..<4){index in
                        CardView(isFaceUp: true)
                    }
                }
            }
        }.padding()
    }
}

struct CardView:View {
    
    var isFaceUp:Bool
    var body : some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.orange)
                Text("👻")
                    .font(.largeTitle)
            }else{
               
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
                    .foregroundColor(.orange)
            }
           
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
 
