//
//  Screen2View.swift
//  MyBaliApp
//
//  Created by Ivan on 03/03/26.
//

import SwiftUI

struct AddPhoto: View {
    var body: some View {
        Button(action: {
            print("Photo tapped")
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.gray)
                    .scaledToFit()
                VStack {
                    Image(systemName: "photo.badge.plus.fill")
                        .font(.system(.largeTitle))
                        .scaledToFill()
                        .foregroundColor(Color.white)
                    Text("Add Photo")
                        .font(.system(.title, design: .default))
                        .foregroundColor(Color.white)
                        .padding(.top, 5)
                }
                
                    
                    
            }
        }

    }
}

#Preview {
    AddPhoto()
}
