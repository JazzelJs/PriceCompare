//
//  Screen1View.swift
//  MyBaliApp
//
//  Created by Ivan on 03/03/26.
//

import SwiftUI

struct Screen1View: View {
    var body: some View {
        NavigationStack {
            Dropdown()
                .padding(.top)
                .frame(width: 220, height: 80)
                .font(.system(.headline))
                .padding()
            
            List {
                Group {
                    HStack {
                        Image("sarimande")
                            .resizable()
                            .foregroundStyle(.tint)
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                        VStack(alignment: .leading) {
                            Text("Pepito")
                                .bold()
                            Text("Rp 26000")
                                .foregroundStyle(Color.gray)
                                .bold()
                        }
                        //                        Spacer()
                        //                        Image(systemName: "chevron.right")
                    }
                    .padding()
                    .padding(.trailing, 20)
                    .frame(height: 100)
                    .listRowInsets(EdgeInsets())
                }
                
                Group {
                    HStack {
                        Image("sarimande")
                            .resizable()
                            .foregroundStyle(.tint)
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                        VStack(alignment: .leading) {
                            Text("Papaya")
                                .bold()
                            Text("Rp 28000")
                                .foregroundStyle(Color.gray)
                                .bold()
                        }
                        //                        Spacer()
                        //                        Image(systemName: "chevron.right")
                    }
                    .padding()
                    .padding(.trailing, 20)
                    .frame(height: 100)
                    .listRowInsets(EdgeInsets())
                }
            }

            .listStyle(PlainListStyle()) // Remove the background of the list
            .listRowSpacing(10)
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Select Your Groceries")
                        .font(.title)
                        .fontWeight(.bold)
                        .fixedSize()
                        .padding(.top, 30)
                }
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: Screen2View()) {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(.largeTitle))
                            .scaledToFill() // This will be your custom button
                    }
                    
                    
                }
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .padding(40)
        
            
            
        }
    }
}

#Preview {
    Screen1View()
}
