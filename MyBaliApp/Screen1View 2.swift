import SwiftUI

struct Screen1ViewTest: View {

    @State private var filtered: [Groceries] = []
    @State var SelectedCategoriesName: String = "Chicken"
    let categories: [String] = ["Chicken", "Soap", "Milk"]

    // Example data
    let allgroceries = [
        Groceries(name: "Chicken", supermarket: "Pepito", price: 26000, photos: "ChickPapaya", note: ""),
        Groceries(name: "Chicken", supermarket: "Papaya", price: 28000, photos: "ChickPepi", note: ""),
        Groceries(name: "Soap", supermarket: "Pepito", price: 15000, photos: "Soap1", note: ""),
        Groceries(name: "Soap", supermarket: "Papaya", price: 14000, photos: "Soap2", note: ""),
        Groceries(name: "Milk", supermarket: "Pepito", price: 2000, photos: "Milk1", note: ""),
        Groceries(name: "Milk", supermarket: "Papaya", price: 5000, photos: "Milk2", note: ""),
    ]
    @State private var sorttoggle = false
    
    var body: some View {
        NavigationStack {
            Picker("Categories", selection: $SelectedCategoriesName) {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                        .padding()
                        
                }
            }
            .pickerStyle(.segmented)
            .onChange(of: SelectedCategoriesName) { newValue in
                FilterandSort() // Trigger FilterandSort after the value changes. This is for the Categories Data
            }
            .padding(.top)
            .frame(width: 220, height: 80)
            .font(.system(.headline))
            
            
//            Text("\(filtered.count) items found")
            HStack{
                
                Button(action: {
                    sorttoggle.toggle() // Toggle the sorting order (ascending/descending)
                    FilterandSort() // Reapply the filter and sort after the toggle
                }) {
                    Text(sorttoggle ? "Most Expensive" : "Cheapest")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    Image(systemName: "arrow.up.arrow.down")
                        .foregroundColor(.gray)
                    Spacer()
                }
                
                
                    
            }
            .padding(.leading, 40 )
            
            List(filtered, id: \.id) { grocery in
                HStack {
                    Image(grocery.photos)
                        .resizable()
                        .foregroundStyle(.tint)
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipped()
                        .aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading) {
                        Text(grocery.supermarket)
                            .bold()
                        Text("Rp\(grocery.price)")
                            .foregroundStyle(Color.gray)
                            .bold()
                    }
//                    .onAppear {
//                        FilterandSort() // Re-filter and re-sort the groceries when the item appears
//                    }
                }
                .padding()
                .frame(height: 100)
                .listRowInsets(EdgeInsets())
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
                            .scaledToFill()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .padding(40)
        }
        .onAppear {
            FilterandSort() // Call to filter data when the view first appears
        }
    }

    func FilterandSort() {
        // Filter and sort groceries based on the selected category
        filtered = allgroceries
            .filter { $0.name == SelectedCategoriesName }
            .sorted { sorttoggle ? $0.price > $1.price : $0.price < $1.price }
        print(filtered)
    }

}


#Preview {
    Screen1ViewTest()
}
