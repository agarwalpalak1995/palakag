//
//  main.swift
//  sample
//
//  Created by Sierra 4 on 27/01/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation
var arrayOfInts:[Int] = [2,5,7,9,11,13]
var k=arrayOfInts.count

func meanofnum(numbers: [Int]) -> Int
{
    var sum:Int = 0
    for number in numbers
    {
        sum += Int(number)
    }
    return  sum / numbers.count
}

print("mean is \(meanofnum(numbers: arrayOfInts))")



func medianofnum(numbers: [Int]) -> Int
{
    var a:Int = numbers.count%2
    if( a == 0)
     {
      return numbers.count/2
     }
    
      else
       {
         return (numbers.count/2)+1
       }
}
    print( "median is \(arrayOfInts[medianofnum(numbers: arrayOfInts)])" )

func modesValue(series:[Int]) -> Int
{
    var mode:Int = 0
    var maxCount = 1
    for index in 0..<k
    {
        var value = arrayOfInts[index]
        var count = 0
        for inner in 0..<k
        {
            if (arrayOfInts[inner] == value)
            {
                count+=1
            }
        }
            if count > maxCount
            {
                mode = value
                maxCount = count
            }
            else if count<1
            {
                mode=0
            }
        }
    
    return mode
}
print("mode is \(modesValue(series:arrayOfInts))")


/*func modeofnum(numbers: [Int]) ->Int

{
    var occurrences: [Int : Int] = [ :]
    for number in numbers
    {
        if var value = occurrences[number]
        {
            occurrences[number] = value
        }
        else
        {
            occurrences[number] = 1
        }
    }
        var highestPair: (key: Int, value: Int) = (0, 0)
       for (key, value) in occurrences
    {
        highestPair = (value > highestPair.value) ? (key, value) : highestPair
    }
    return Int(highestPair.key)
}
 */






