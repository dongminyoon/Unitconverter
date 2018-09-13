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
let convertcmToYard : Float = 0.0109

func isFirstInch(enterNumberUnit : [String]){
    var convertNumber : Float = inchTocentimeter(originNumber: Float(enterNumberUnit[0])!)
    
    if enterNumberUnit.count == 3{                                              // 변환받을 단위와 변환할 단위를 입력한 경우 Ex) 18 inch m, 18 inch cm
        if enterNumberUnit[2] == "m"{                                           // inch를 m로 변환하는 경우
            convertNumber = centimeterTometer(originNumber: convertNumber)
            print("\(convertNumber)m")
        }
        else if enterNumberUnit[2] == "cm"{                                     // inch를 cm으로 변환하는 경우
            print("\(convertNumber)cm")
        }
        else{                                                                   // 변환할 단위를 지원하지 않는 경우 Ex) 18 inch kg
            print("지원하지 않는 단위입니다.")
        }
    }
    else{                                                                       // 변환할 단위를 입력해주지 않은 경우 Ex) 18 inch
        print("지원하지 않는 단위입니다.")
    }
    
}

func isFirstMeter(enterNumberUnit : [String]){
    var convertNumber : Float = meterTocentimeter(originNumber: Float(enterNumberUnit[0])!)
    
    if enterNumberUnit.count == 3{                                              // 변환받을 단위와 변환할 단위를 입력한 경우 Ex) 18 m inch
        if enterNumberUnit[2] == "inch"{                                        // m --> inch로 변환할 경우
            convertNumber = centimeterToinch(originNumber: convertNumber)
            print("\(convertNumber)inch")
        }
        else if enterNumberUnit[2] == "yard"{                                   // m --> yard로 변환할 경우
            convertNumber = centimeterToyard(originNumber: convertNumber)
            print("\(convertNumber)yard")
        }
        else{                                                                   // 변환할 단위를 지원하지 않는 경우 Ex) 18 m cm
            print("지원하지 않는 단위입니다.")
        }
    }
        
    else if enterNumberUnit.count == 2{                                         // m --> cm 로 변환하는 경우 Ex) 18 m
        print("\(convertNumber)cm")
    }
        
    else{                                                                       // 잘못 입력한 경우 Ex) 18 m inch cm
        print("지원하지 않는 단위입니다.")
    }
    
}

func isFirstCentimeter(enterNumberUnit : [String]){
    var convertNumber : Float
    
    if enterNumberUnit.count == 3{                                              // 변환받을 단위와 변환할 단위를 입력한 경우
        if enterNumberUnit[2] == "inch"{                                        // 변환할 단위가 inch인 경우 Ex) 18 cm inch
            convertNumber = centimeterToinch(originNumber: Float(enterNumberUnit[0])!)
            print("\(convertNumber)inch")
        }
        else{                                                                   // 지원하지 않는 단위인 경우 Ex) 18 cm yard
            print("지원하지 않는 단위 입니다.")
        }
    }
    else if enterNumberUnit.count == 2{                                         // cm --> m로 변환할 경우
        convertNumber = centimeterTometer(originNumber: Float(enterNumberUnit[0])!)
        print("\(convertNumber)m")
    }
    else{                                                                       // 지원하지 않는 경우
        print("지원하지 않는 단위입니다.")
    }
}

func isFirstYard(enterNumberUnit : [String]){
    var convertNumber : Float = yardTocentimeter(originNumber: Float(enterNumberUnit[0])!)
    
    if enterNumberUnit.count == 3{
        if enterNumberUnit[2] == "m"{
            convertNumber = centimeterTometer(originNumber: convertNumber)
            print("\(convertNumber)m")
        }
        else{
            print("지원하지 않는 단위입니다.")
        }
    }
    else if enterNumberUnit.count == 2{
        convertNumber = centimeterTometer(originNumber: convertNumber)
        print("\(convertNumber)m")
    }
    else{
        print("지원하지 않는 단위입니다.")
    }
    
}

func yardTocentimeter (originNumber : Float) -> Float{                                  // yard --> cm
    let convertNumber : Float = originNumber / convertcmToYard
    
    return convertNumber
}

func centimeterToyard (originNumber : Float) -> Float{                                  // cm --> yard
    let convertNumber : Float = originNumber * convertcmToYard
    
    return convertNumber
}

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

while true{
    let number : String = readLine()!
    var enterNumberUnit = number.components(separatedBy: " ")
    
    if enterNumberUnit.count == 1{                                                  // Quit , Q , 18m 처럼 공백을 입력하지 않은경우
        if enterNumberUnit[0] == "q" || enterNumberUnit[0] == "quit"{
            break
        }
        else{
            print("지원하지 않는 단위입니다.")
        }
    }
    else if enterNumberUnit[1] == "inch"{                                           // 변환받을 단위가 inch인 경우
        isFirstInch(enterNumberUnit: enterNumberUnit)
    }
    else if enterNumberUnit[1] == "m"{                                              // 변환받을 단위가 m인 경우
        isFirstMeter(enterNumberUnit: enterNumberUnit)
    }
    else if enterNumberUnit[1] == "cm"{                                             // 변환받을 단위가 cm인 경우
        isFirstCentimeter(enterNumberUnit: enterNumberUnit)
    }
    else if enterNumberUnit[1] == "yard"{                                           // 변환받을 단위가 yard인 경우
        isFirstYard(enterNumberUnit: enterNumberUnit)
    }
    else{                                                                           // 지원하지 않는 경우
        print("지원하지 않는 단위입니다.")
    }
}











