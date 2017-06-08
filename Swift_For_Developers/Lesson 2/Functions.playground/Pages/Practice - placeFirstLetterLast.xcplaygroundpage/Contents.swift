//: [Previous](@previous)
import Foundation

// TODO: Implement placeFirstLetterLast() here!

func firstCharacter(of myString: String) -> Character{
    return myString[myString.startIndex]
}


func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}


placeFirstLetterLast("tim")
//: [Next](@next)
