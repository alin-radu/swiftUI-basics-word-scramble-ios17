//https://hackingwithswift.com/books/ios-swiftui/introducing-list-your-best-friend
//https://www.youtube.com/watch?v=sXpZh9UbMQc


import SwiftUI

struct ListBasics: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
//        List {
//            Section("Section 1") {
//                Text("Static row 1")
//            }
//            
//            Section("Section 2") {
//                ForEach(0..<3) {
//                    Text("Dynamic row \($0)")
//                }
//            }
//
//            Section("Section 3") {
//                Text("Static row 3")
//            }
//        }
//        .listStyle(.grouped)

        List(0..<2) {
            Text("Dynamic Row \($0)")
        }
        
        List(people, id: \.self) {
            Text($0)
        }
        
        List {
            Text("Static row")
            
            ForEach(people, id:\.self){
                Text($0)
            }
            
            Text("Static row")
        }
    }
}

#Preview {
    ListBasics()
}
