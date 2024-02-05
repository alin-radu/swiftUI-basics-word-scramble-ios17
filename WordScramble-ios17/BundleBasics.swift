//https://www.youtube.com/watch?v=-f6VQopb0WU

import SwiftUI

struct BundleBasics: View {

    var body: some View {
        Text("Hello")
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "someFile", withExtension: "txt"){
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string
                print(fileContents)
            }
        }
    }
}

#Preview {
    BundleBasics()
}
