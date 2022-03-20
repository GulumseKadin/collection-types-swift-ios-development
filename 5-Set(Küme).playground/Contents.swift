import UIKit

var notlar = [String : Int]()
print(notlar.count)

notlar["Ahmet"] = 45
notlar["Yasin"] = 50
notlar["Sibel"] = 60
print(notlar)

notlar["Ahmet"] = 70
print(notlar)

//2. Güncelleme yolu
notlar.updateValue(75, forKey: "Ahmet")
print(notlar)

//Silme işlemi

notlar.removeValue(forKey: "Ahmet")
print(notlar)

//Silme 2. yöntem

notlar["Yasin"] = nil
print(notlar)


var dillerDizi = [String]()

dillerDizi.append("Türkçe")
dillerDizi.append("İngilizce")
dillerDizi.append("Fransızca")
print(dillerDizi.count)

dillerDizi.append("Türkçe")
print("Dizide \(dillerDizi.count) tane eleman var")


for dil in dillerDizi {
    print(dil)
}


//Kümeyle Oluşturalım
print("--------------------------------")
var dillerKume = Set<String>()
dillerKume.insert("Türkçe")
dillerKume.insert("Almanca")
dillerKume.insert("Fransızca")
dillerKume.insert("İngilizce")

print("Kümede \(dillerKume.count) tane eleman var")

dillerKume.insert("Almanca")
print("Kümede \(dillerKume.count) tane eleman var")


let (eklenmeSonuc, eklenenDeger) = dillerKume.insert("Arapça")

if eklenmeSonuc {
    
    print("\(eklenenDeger) ifadesi başarılı bir şekilde eklendi")
} else {
    print("\(eklenenDeger) ifadesi daha önce olduğu için eklenemedi")
}




let silmeSonuc = dillerKume.remove("Almanca") ?? "Böyle bir değer olmadığı için silme işlemi başarısız"
print(silmeSonuc)


var arananDil = "Türkçe"
if dillerKume.contains(arananDil) {
    print("Dil Bulundu")
} else {
    print("Dil Bulunamadı")
}

//dillerKume.removeAll()
dillerKume = []

var sayilar1 : Set<Int> = [1,2,3,4,5,6]
var sayilar2 : Set<Int> = [4,5,6,7,8,9]
var sayilar3 : Set<Int> = [4,5,1]
var sayilar4 : Set<Int> = [99,100,10]
var degerler = [1,2,3,4,5]



//KESİŞİM KÜMESİ

let kesisim = sayilar1.intersection(sayilar2).sorted()
print("------KESİŞİM KÜMESİ------------")
for deger in kesisim {
    print(deger)
}

//BİRLEŞİM KÜMESİ
print("----------BİRLEŞİM KÜMESİ--------")
let birlesim = sayilar1.union(sayilar2).sorted()
for deger in birlesim {
    print(deger)
}

//SİMETRİK FARK İŞLEMİ
print("----------SİMETRİK FARK İŞLEMİ--------")
let simetrikFark = sayilar1.symmetricDifference(sayilar2).sorted()

for deger in simetrikFark {
    print(deger)
}



// FARK İŞLEMİ
print("---------- FARK İŞLEMİ--------")
let fark = sayilar1.subtracting(sayilar3).sorted()
for deger in fark {
    print(deger)
}



//AYRIK KÜME İŞLEMİ

if sayilar1.isDisjoint(with: sayilar4) {
    print("Ayrık Kümeler")
} else {
    print("Kümeler Ayrık Değil!")
}



//ALT KÜME

if sayilar3.isSubset(of: sayilar1) {
    print("Evet. Alt Kümesidir")
} else {
    print("Hayır. Alt Kümesi Değildir")
}




let k1 : Set = [2,4,6,8,10]
let k2 : Set = [0,3,7,6,8]
let k3 : Set = [4,10,8,2,6,7]


if k1 == k3 {
    print("2 kümenin tüm elemanları tamamen aynı")
} else {
    print("2 kümenin birbirinden farklı en az 1 elemanı var")
}

































