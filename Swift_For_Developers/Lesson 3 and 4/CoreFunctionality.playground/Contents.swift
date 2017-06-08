//: Playground - noun: a place where people can play

import Foundation

let template = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>\n",
    "Banana Fana Fo F<SHORT_NAME>\n",
    "Me my Mo M<SHORT_NAME>\n",
    "<FULL_NAME>"].joined(separator: "\n")


func shortNameFromName(name: String) -> String {
    let lowercaseName = name.lowercased()
    let vowelSet = CharacterSet(charactersIn: "aeiou")
    var shortName = ""
    
    
    for char in lowercaseName.unicodeScalars {
        if(vowelSet.contains(char)) {
            shortName = lowercaseName.substring(from: lowercaseName.characters.index(of: Character(char))!)
            return shortName
        }
    }
    return ""
}

func lyricsForName(lyricsTemplate: String, fullName: String) -> String{
    let shortName = shortNameFromName(name: fullName)
    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    
    return lyrics
}

lyricsForName(lyricsTemplate: template, fullName: "Tim")

