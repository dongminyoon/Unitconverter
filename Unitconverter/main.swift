//
//  main.swift
//  Unitconverter
//
//  Created by 윤동민 on 2018. 9. 11..
//  Copyright © 2018년 윤동민. All rights reserved.
//

import Foundation

let convertcmTomValue : Float = 100
let convertcmToinchValue : Float = 0.393

func centimeterTometer (originNumber : Float) -> Float{                                 // cm --> m
    let converNumber : Float = originNumber / convertcmTomValue
    
    return converNumber
}

func meterTocentimeter (originNumber : Float) -> Float{                                 // m --> cm
    let convertNumber : Float = originNumber * convertcmTomValue
    
    return convertNumber
}

func centimeterToinch (originNumber : Float) -> Float{                                  // cm --> inch
    let convertNumber : Float = originNumber * convertcmToinchValue

    return convertNumber
}

func inchTocentimeter (originNumber : Float) -> Float{                                  // inch --> cm
    let convertNumber : Float = originNumber / convertcmToinchValue
    
    return convertNumber
}

func meterToinch (originNumber : Float) -> Float{                                       // m --> inch
    let convertNumber = centimeterToinch(originNumber: meterTocentimeter(originNumber: originNumber))
    
    return convertNumber
}

func inchTometer (originNumber : Float) -> Float{                                       // inch --> m
    let convertNumber = centimeterTometer(originNumber: inchTocentimeter(originNumber: originNumber))
    
    return convertNumber
}

while true{
    
    let number : String = readLine()!

    var arr = number.components(separatedBy: " ")

    if arr[1] == "inch" && arr[1] == "cm"{
        let convertNumber : Float = inchTocentimeter(originNumber: Float(arr[0])!)
        print("\(convertNumber)cm")
        break
    }
    else if arr[1] == "cm" && arr[2] == "inch"{
        let convertNumber : Float = centimeterToinch(originNumber: Float(arr[0])!)
        print("\(convertNumber)inch")
        break
    }
    else if arr[1] == "inch" && arr[2] == "m"{
        let convertNumber : Float = inchTometer(originNumber: Float(arr[0])!)
        print("\(convertNumber)m")
        break
    }
    else if arr[1] == "m" && arr[2] == "inch"{
        let convertNumber : Float = meterToinch(originNumber: Float(arr[0])!)
        print("\(convertNumber)inch")
        break
    }
    else if arr[1] == "cm" {
        let convertNumber : Float = centimeterTometer(originNumber: Float(arr[0])!)
        print("\(convertNumber)m")
        break
    }
    else if arr[1] == "m"{
        let convertNumber : Float = meterTocentimeter(originNumber: Float(arr[0])!)
        print("\(convertNumber)cm")
        break
    }
    else{
        print("지원하지 않는 단위입니다.")
    }
}











