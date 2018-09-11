//
//  main.swift
//  Unitconverter
//
//  Created by 윤동민 on 2018. 9. 11..
//  Copyright © 2018년 윤동민. All rights reserved.
//

import Foundation

let convertValue : Float = 100

func convertUnit (originNumber : String){
    var arr = originNumber.components(separatedBy: " ")
    var convertNumber : Float = 0
    
    if arr[1] == "cm"{
        convertNumber = Float(arr[0])! / convertValue
        print("\(convertNumber)m")
    }
    else if arr[1] == "m"{
        convertNumber = Float(arr[0])! * convertValue
        print("\(convertNumber)cm")
    }
    
}

var number : String = "120 cm"
var number1 : String = "1.8 m"

convertUnit(originNumber: number)
convertUnit(originNumber: number1)








