//
//  main.swift
//  BermainKata
//
//  Created by omrobbie on 10/02/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

print("Selamat Datang di Dicoding Academy!")

print("Mari bermain kata!")
print("----------------------------------")

print("Masukkanlah nama depan Anda:"); let firstName = String(readLine() ?? "")
print("Masukkanlah nama belakang Anda:"); let lastName = String(readLine() ?? "")
print("----------------------------------")
print("Berikut ini adalah operator-operator yang digunakan")

let concatenationString = firstName + lastName
print("String Concatenation Operator : \"\(concatenationString)\"")

var mutabilityString = ""
mutabilityString += firstName
mutabilityString += lastName
print("String Mutability Operator : \"\(mutabilityString)\"")

// Operator Comparison
var comparisonString = ""
if firstName == lastName {
    comparisonString = String(true)
} else {
    comparisonString = String(false)
}
print("String Comparison Operator : \"\(comparisonString)\"")
print("----------------------------------")
print("Berikut ini adalah fungsi-fungsi yang digunakan")

let fullName = firstName + " " + lastName

let empty = firstName.isEmpty || lastName.isEmpty
print("Fungsi isEmpty : \"\(empty)\"")

let startIndex = fullName[fullName.startIndex]
print("Fungsi startIndex : \"\(startIndex)\"")

let index = fullName[fullName.index(after: fullName.startIndex)]
print("Fungsi index : \"\(index)\"")

let customIndex = fullName[fullName.index(fullName.startIndex, offsetBy: 5)]
print("Index ke lima : \"\(customIndex)\"")

let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("Fungsi endIndex : \"\(endIndex)\"")

var insert = fullName
insert.insert("!", at:insert.endIndex)
print("Fungsi insert : \"\(insert)\"")

var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("Fungsi remove : \"\(remove)\"")

var append = firstName
append.append(lastName)
print("Fungsi append : \"\(append)\"")

let count = fullName.count
print("Fungsi lenght : \(count)")
print("----------------------------------")
