//
//  Screen2View.swift
//  MyBaliApp
//
//  Created by Ivan on 03/03/26.
//

import SwiftUI

struct Screen2View: View {
//    @State private var username: String = ""
    @State private var notes : String = ""
    var body: some View {
        
        VStack {
            
            Form {
                
                Section(header: Text("")) {
                    Dropdown()
                    DropdownSuper()
                    Text("Price")
                    
                }
                Section(header: Text("Add Photos")) {
                    AddPhoto()
                        .listRowBackground(Color.clear)
                        .frame(width: 350, height: 280)
                    
                }
                Section(header: Text("Personal Notes")) {
                    TextField("Add Any Notes that you want",text: $notes,axis: .vertical) // The axis is to make the field expand vertically
                        .lineLimit(2) // The box can only grow to ftwo lines, not that they cannot type any more. It will only become scrollinh
                    
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Enter your Data")
                            .font(.title)
                            .fontWeight(.bold)
                            .fixedSize()
                        //                        .padding(.top, 30)
                    }
                }
                
                
            }
            .background(Color.clear)
            .scrollContentBackground(.hidden)
            
            
            Spacer()
            Button("Save") {
                // Action will be added later
            }
//            frame(width: 30)
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 50)
//            .fixedSize()
            .frame(width: 350, height: 100)
            
        }
        .background(Color.gray.opacity(0.1))
        
    }
    
}


#Preview {
    Screen2View()
}
