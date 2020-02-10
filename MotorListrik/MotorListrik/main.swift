//
//  main.swift
//  MotorListrik
//
//  Created by omrobbie on 10/02/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

func getInput(message: String) -> String? {
    print(message, terminator: " : ");
    return readLine()
}

func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message){
        return Int(inputString)
    } else{
        return nil
    }
}

var speedTotal = 0

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    func incrementer() -> Int {
        speedTotal += amount
        return speedTotal
    }
    return incrementer
}

func makeDecrementer(forDecrement amount: Int) -> () -> Int {
    func decrementer() -> Int {
        speedTotal -= amount
        return speedTotal
    }
    return decrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
let decrementByTen = makeDecrementer(forDecrement: 10)

func turnOnEngine() {
    print("Hidupkan mesin.........")
    print("Selamat datang di Motor Listrik Dicoding")
    print("Brem brem brem brem")
}

func turnOffEngine() {
    print("Ciiiiiiiitttttt......")
    print("Motor berhenti!!!!")
}

func showSpeed() {
    print("Kecepatan saat ini : \(speedTotal)")
    print("Ngeeeeengggggggg")
}

func action() {
    print("----------------------------------------")
    print("Ayo beraksi:")
    print("[1] Tambahkan kecepatan")
    print("[2] Kurangi kecepatan")
    print("[3] Matikan mesin")

    if let state = getInputInt(message: "Masukkan aksi Anda") {
        switch state {
        case 1:
            speedTotal = incrementByTen()
            showSpeed()
            action()
        case 2:
            if speedTotal >= 0 {
                speedTotal = decrementByTen()
                showSpeed()
                action()
            } else {
                turnOffEngine()
                break
            }
        case 3:
            turnOffEngine()
            break
        default:
            break
        }
    } else {
        print("Input tidak valid")
    }
}

turnOnEngine()
action()
