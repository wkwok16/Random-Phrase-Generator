//
//  List.swift
//  NewApp
//
//  Created by William Kwok on 2/12/16.
//  Copyright © 2016 William Kwok. All rights reserved.
//

import Foundation

class ListThing
{
    var lastReturnValue = 0 // Starts a last
    func returnRandomValue() -> Int
    {
        
        let randomNumber: Int = Int(arc4random_uniform(UInt32(self.fullList.count)))
        return Int(randomNumber)
    }
    
    func addString(input:String)
    {
        listOfPhrases.append(input)
    }
    
    
    func returnString() -> String
    {
        if(fullList.count == 0)
        {
            resetList()
        }
        var returnStringValue = self.returnRandomValue()
        if(returnStringValue == lastReturnValue)
        {
            returnStringValue = self.returnRandomValue()
        }
        lastReturnValue = returnStringValue
        let returnString: String = self.fullList[returnStringValue]
        self.fullList.removeAtIndex(returnStringValue)
        return returnString
    }
    
    var listOfPhrases: [String] = [ // Actual list of Phrases (Reset button will add to fullList again)
        "This is a test 1",
        "This is a test 2",
        "This is a test 3",
        "This is a test 4",
        "This is a test 5",
        "This is a test 6",
        "This is a test 7",
        "This is a test 8"]
    
    var fullList: [String] = []
    
    func resetList()
    {
        for var index = 0; index < listOfPhrases.count; ++index
        {
            fullList.append(listOfPhrases[index])
        }
    }
    
    
}
