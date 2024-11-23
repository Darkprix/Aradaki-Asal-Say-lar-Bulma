//
//  main.swift
//  Aradaki Asal Sayıları Bulma
//
//  Created by yunus emre yıldırım on 23.11.2024.
//

import Foundation

// Kullanıcıdan 2 tane sayı değeri alacağız
//Bu iki sayı arasındaki asal sayı değerlerini bulup ekrana yazdıracağız

func aradakiAsalSayılarıBul(begin : Int, end : Int) {
    for sorgulananSayi in begin...end {
        for deneyiciSayi in 2...(begin - 1){
            if sorgulananSayi % deneyiciSayi == 0 {
                break
            }else {
                asalSayilarKumesi.append(sorgulananSayi)
                break
            }
        }
    }
}

func cıktıOkuma() {
    print("\n-----Aradaki Asal Sayılar-----")
    for (num, cıktılar) in asalSayilarKumesi.enumerated() {
        print("\(num + 1).sayı:\(cıktılar) ")
    }
}
//Main
var asalSayilarKumesi : [Int] = []
print("-----Aradaki asal sayıları bulma programı-----")
while true {
    print("Başlangıç değerini giriniz = ")
    if let begin = Int(readLine() ?? "") {
        print("Bitiş değerini giriniz = ")
        if let end = Int(readLine() ?? "") {
            aradakiAsalSayılarıBul(begin: begin, end: end)
        }else {
            print("Lütfen sayı giriniz")
        }
    }else {
        print("Lütfen sayı giriniz")
    }

    cıktıOkuma()
}



