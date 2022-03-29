//
//  ContentView.swift
//  warcardgame
//
//  Created by Srujan on 29/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randnum1=2
    @State private var randnum2=3
    @State private var score1=0
    @State private var score2=0

    
    var body: some View {
        
        ZStack{
            
            Image("Background").resizable().edgesIgnoringSafeArea(.all)
           
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Image("card"+String(randnum1))
                     Image("card"+String(randnum2))
                    
                }
                Spacer()
                
                Button(action: {
                    self.randnum1=Int.random(in: 3...14)
                    self.randnum2=Int.random(in: 2...14)
                    
                    if(self.randnum1>=self.randnum2){
                        self.score1+=2
                       
                    }
                    else{
                        self.score2+=2
                    }
                }){
                   Image("dealbutton")
                }
                
                Spacer()
                HStack{
                    VStack{
                        Text("player score").bold().padding(.bottom,10)
                        Text(String(score1))
                    }.padding(.leading,10).foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("cpu").bold().padding(.bottom,10)
                        Text(String(score2))
                    }.padding(.trailing,10).foregroundColor(.white)
                    
                }
                Spacer()
               

            }
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
