//
//  Dropdown.swift
//  MyBaliApp
//
//  Created by Jason Marsellino on 11/03/26.
//

import SwiftUI

struct DropdownSuper: View {
    @State private var SelectedCategories: String = "Pepito"
    let categories: [String] = ["Pepito", "Papaya"]
    var body: some View {
        Picker ("Supermarket", selection: $SelectedCategories)
        {ForEach(categories, id: \.self)
            {category in Text(category)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .font(.system(.title))
                .padding()
                }
        }
        .pickerStyle(MenuPickerStyle())
        .cornerRadius(10)
//        .frame(width: 250, height: 140)
    }
}

#Preview {
    DropdownSuper()
}
