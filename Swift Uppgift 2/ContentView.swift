//
//  ContentView.swift
//  Swift Uppgift 2
//
//  Created by Nadja Morin on 2023-11-17.
//

import SwiftUI


struct ContentView: View {
    @State var nameofperson = ""
    @State var people = [String]()
    //array av personer som ska listas, angav att det var strängtyp istället för "" för att inte få en tom rad överst
    
    var body: some View {
        VStack {
            
            HStack{
                TextField("Skriv namn", text: $nameofperson)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action:{
                    
                    people.append(nameofperson)
                    nameofperson = ""
                }, label:{
                    Text("Lägg till")
                        .fontWeight(.bold)
                        .padding()      
                        .foregroundColor(.white)
                })
                
            }
            
        }
        
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
        List (people, id:\.self){ person in
            Text (person)
        }
        
        if people.isEmpty == false {
            //om något finns i listan visas knappen Nollställ, annars inte
            Button(action: {
                people = []
            }, label: {
                Text("Nollställ")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
            })
        }
    }
}

#Preview {
    ContentView()
}
