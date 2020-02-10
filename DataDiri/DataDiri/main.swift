//
//  main.swift
//  DataDiri
//
//  Created by omrobbie on 10/02/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import Foundation

print("Selamat Datang di Dicoding Academy")
print("----------------------------------")


print("Masukkan nama depan Anda: "); let firstName = readLine()!
print("Masukkan nama belakang Anda: "); let lastName = readLine()!
print("Masukkan umur Anda: "); let age = readLine()!
print("Masukkan alamat Anda: "); let address = readLine()!
print("Masukkan pekerjaan Anda: "); let job = readLine()!

let fullName = firstName + " " + lastName

print("----------------------------------")
print("Apakah kalian tahu \(fullName)?")
print("\(firstName) adalah seorang \(job)")
print("Saat ini ia berumur \(age) dan bertempat tinggal di \(address)")
print("----------------------------------")
