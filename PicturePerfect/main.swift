//
//  main.swift
//  PicturePerfect
//

import Foundation

// INPUT
// Global variable to use later in program
var countOfPhotoArrangementsToBeConsidered = 0

//make the loop for the condition of the count of opto arrangements to be considered
while 1 == 1 {
    print("How many photo arrangements will be considered?")
    //check is it nil?
    guard let expectedPhotoArrange = readLine() else {
        continue
    }
    //check for the integer
    guard let integerExpectedPhotoArrange = Int(expectedPhotoArrange) else {
        continue
    }
    //check for the range
    if integerExpectedPhotoArrange < 1 || integerExpectedPhotoArrange > 10 {
        continue
    }
    countOfPhotoArrangementsToBeConsidered = integerExpectedPhotoArrange
    break //stop the loop
}
// Write a loop to actually collect the number of photo arrangements to be considered
// e.g.: write the rest of the INPUT section

//find another common factor
var anotherCommonFactor = 0
//find the perimeter
var perimeter = 0

// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the number of pictures in each arrangement using this loop
for counter in 1...countOfPhotoArrangementsToBeConsidered {
    
    // Ask how many pictures in this particular arrangement
    print("How many pictures in photo arrangement #\(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    //The given input has to be integer
    guard let integerInput = Int(givenInput) else {
        continue
    }
    //The given input have to be positive
    if integerInput < 0 || integerInput > 65000{
        continue
    }
    //find the square root of the integer input
    let squareRootIntegerInput = sqrt(Double(integerInput))
    
    //find the common factor, find it from the biggest to the smallest
    for commonFactor in stride(from: Int(squareRootIntegerInput), to: 0, by: -1)
    {
        //when the reminder is 0, it's the common factor.
        if integerInput % commonFactor == 0 {
            print(commonFactor)
            //find another common factor
            anotherCommonFactor = integerInput / commonFactor
            print(anotherCommonFactor)
            //find the perimeter
            perimeter = 2 * (anotherCommonFactor + commonFactor)
            //print out the solution
            print("Minimum perimeter is \(perimeter) with dimensions \(commonFactor) by \(anotherCommonFactor).")
            break //stop the loop
            //the biggest common factor has the smallest permieter
        }
        
    }
    
}
