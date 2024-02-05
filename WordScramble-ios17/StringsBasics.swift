//https://www.youtube.com/watch?v=YPZg6KUVXPk

import SwiftUI

struct StringBasics: View {

    var body: some View {

        Text("Hello")
        
        Button("Press"){
            print(testStrings())
        }
        
    }
    
    func testStrings()->String {
        let input = "a b c"
        
        let letters = input.components(separatedBy: " ")
        
        let randLetter = letters.randomElement() ?? "a"
        
        let trimmed = randLetter.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        
        print(trimmed)
        print(word)
        
        return randLetter
    }
    
    func checkForMisspelled(){
//
        let word = "swift"
        let checker = UITextChecker()
//        
        let range = NSRange(location: 0, length: word.utf16.count)
//        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
//        
        let allGood = misspelledRange.location == NSNotFound
        
        print(allGood)
    }
}

#Preview {
    StringBasics()
}
