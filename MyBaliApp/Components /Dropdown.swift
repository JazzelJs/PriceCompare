//
//  Dropdown.swift
//  MyBaliApp
//
//  Created by Jason Marsellino on 11/03/26.
//

import SwiftUI

struct Dropdown: View {
    @State var SelectedCategoriesName: String = "Chicken"
    let categories: [String] = ["Chicken", "Soap", "Milk"]
    var body: some View {
        Picker ("Categories", selection: $SelectedCategoriesName)
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
    Dropdown()
}
