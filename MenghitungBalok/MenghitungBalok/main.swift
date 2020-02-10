//
//  main.swift
//  MenghitungBalok
//
//  Created by omrobbie on 10/02/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

let width = 2.0
let height = 3.0
let length = 4.0

let volume = length * height * width
let surfaceArea = 2 * ((width * length) + (width * height) + (height * length))
let circumference = 4 * (width + length + height)

print("----------------------------------")
print("Anda memiliki sebuah balok dengan:")
print("Lebarnya adalah \(width) cm")
print("Tingginya adalah \(height) cm")
print("Panjangnya adalah \(length) cm")
print("Volemenya adalah \(volume) cm3")
print("Luas permukaannya adalah \(surfaceArea) cm2")
print("Kelilingnya adalah \(circumference) cm")
print("----------------------------------")
