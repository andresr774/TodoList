//
//  AddView.swift
//  TodoList
//
//  Created by Andres camilo Raigoza misas on 5/12/21.
//

import SwiftUI

struct AddView: View {
    
    @State var textFielText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFielText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(uiColor: .lightGray).opacity(0.3))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖋")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
