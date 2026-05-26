import SwiftUI

struct ComboBox: View {
    @State private var selectedItem: String = ""
    @State private var newItem: String = ""
    @State private var items = ["Option 1", "Option 2", "Option 3"]
    @State private var isDropdownVisible = false
    
    var body: some View {
        VStack {
            TextField("Select or add a new option", text: $newItem)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onTapGesture {
                    isDropdownVisible.toggle()
                }
            
            if isDropdownVisible {
                VStack(alignment: .leading) {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .padding()
                            .onTapGesture {
                                selectedItem = item
                                newItem = item
                                isDropdownVisible = false
                            }
                    }
                    
                    Divider()
                    
                    Button("Add New: \(newItem)") {
                        if !newItem.isEmpty && !items.contains(newItem) {
                            items.append(newItem)
                            selectedItem = newItem
                            isDropdownVisible = false
                        }
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding(.top, 5)
            }
            
            Text("Selected Item: \(selectedItem)")
                .padding()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).stroke())
        .frame(width: 300)
    }
}

struct ContentView: View {
    var body: some View {
        ComboBox()
    }
}

#Preview {
    ContentView()
}
