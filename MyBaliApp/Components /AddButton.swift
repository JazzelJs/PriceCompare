//
//  Screen2View.swift
//  MyBaliApp
//
//  Created by Ivan on 03/03/26.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Button(action: {
            
            print("Icon tapped")
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.system(.largeTitle))
                .scaledToFill()// Optional: Adjust icon size
        }

    }
}

#Preview {
    AddButton()
}
