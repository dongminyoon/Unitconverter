//
//  main.swift
//  Unitconverter
//
//  Created by 윤동민 on 2018. 9. 11..
//  Copyright © 2018년 윤동민. All rights reserved.
//

import Foundation

var number : String = "120 cm"
var arr = number.components(separatedBy: " ")

if arr[1] == "cm"{
    print("\(Float(arr[0])! / 100)m")
}
else if arr[1] == "m"{
    print("\(Float(arr[0])! * 100)cm")
}


var number1 : String = "1.86 m"
var arr1 = number1.components(separatedBy: " ")

if arr1[1] == "cm"{
    print("\(Float(arr1[0])! / 100)m")
}
else if arr1[1] == "m"{
    print("\(Float(arr1[0])! * 100)cm")
}










