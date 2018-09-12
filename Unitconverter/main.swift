//
//  main.swift
//  Unitconverter
//
//  Created by 윤동민 on 2018. 9. 11..
//  Copyright © 2018년 윤동민. All rights reserved.
//

import Foundation

let convertValue : Float = 100

func centimeterTometer (originNumber : String){
    let converNumber : Float = Float(originNumber)! / convertValue
    print("\(converNumber)m")
}

func meterTocentimeter (originNUmber : String){
    let convertNumber : Float = Float(originNUmber)! * convertValue
    print("\(convertNumber)cm")
}

var number : String = readLine()!

var arr = number.components(separatedBy: " ")

if arr[1] == "cm"{
    centimeterTometer(originNumber: arr[0])
}
else if arr[1] == "m"{
    meterTocentimeter(originNUmber: arr[0])
}








