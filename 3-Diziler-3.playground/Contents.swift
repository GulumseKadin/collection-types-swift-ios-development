import UIKit

var str = "Hello, playground"


var markalar : [String] = ["Ford","Fiat","Hyundai","Honda","Ferrari"]
var tersMarkalar = [String]()


for index in stride(from: markalar.count-1, to: -1, by: -1) {
    tersMarkalar.append(markalar[index])
}
print(tersMarkalar)


//var sayilar = [1,2,3,10,4,6,7]
//print("Orijinal Hali : \(sayilar)")
//
//
//var index1 = 0
//let sonIndex = sayilar.count-1
//
//let orta = sonIndex / 2
//
//while index1 <= orta {
//    let index2 = sonIndex - index1
//
//    let gecici = sayilar[index1]
//    sayilar[index1] = sayilar[index2]
//    sayilar[index2] = gecici
//    index1 += 1
//}
//print("Tersi Alınmış Hali : \(sayilar)")


var sayilar = [1,2,3]
print("Orijinal Hali : \(sayilar)")

var index = 0
while index <= (sayilar.count-1) / 2 {
    sayilar.swapAt(index, (sayilar.count-1)-index)
    index += 1
}
print("Tersi Alınmış Hali : \(sayilar)")


var kisiler : [String] = ["Ahmet","Anıl","Yasin","Sibel","Cemre","Ceren","Kenan","Ali","Yavuz"]
var yaslar : [Int] = [28,21,20,19,27,25,26,27,34]
var medeniHali : [Bool] = [true,true,true,false,false,true,false,true,false]

for (i,kisi) in kisiler.enumerated() {
    print("\(i+1). Kişi   Adı : \(kisi).  Yaşı : \(yaslar[i]). Medeni Hali : \(medeniHali[i] ? "Evli" : "Bekar")")
}


var sayilar1 = [1,2,3,4,56,7,8,9,11]
var ciftSayilar = [Int]()
var tekSayilar = [Int]()

for sayi in sayilar1 {
    if sayi % 2 == 0 {
        ciftSayilar.append(sayi)
    } else {
        tekSayilar.append(sayi)
    }
}
print(ciftSayilar)
print(tekSayilar)


ciftSayilar += [10,20,30]
print(ciftSayilar)

ciftSayilar += tekSayilar
print(ciftSayilar)

let s1 = 12
ciftSayilar += [s1]
print(ciftSayilar)



ciftSayilar.swapAt(0, ciftSayilar.count-1)
print(ciftSayilar)


var geriKalanCiftSayilar = ciftSayilar.dropFirst(2)
print(geriKalanCiftSayilar)
print(ciftSayilar)


geriKalanCiftSayilar = geriKalanCiftSayilar.dropLast(3)
print(geriKalanCiftSayilar)


var ilkUcDeger = ciftSayilar[0...2]
print(ciftSayilar)
print(ilkUcDeger)


let ilkUcKisi = kisiler.prefix(upTo: 3)
print(kisiler)
print(ilkUcKisi)


print(kisiler.prefix(while: {$0.contains("A")}))


var sonUcKisi = kisiler.suffix(3)
print(sonUcKisi)

sonUcKisi = kisiler[(kisiler.count-5)...(kisiler.count-1)]
print(sonUcKisi)


























