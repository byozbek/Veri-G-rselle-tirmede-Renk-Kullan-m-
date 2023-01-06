# Veri-Görsellestirmede-Renk-Kullanimi
  Veri görselleştirme çalışmalarında grafiklerin oluşturulması sırasında bazı önemli faktörlerin oldukça hassas ve özenli bir şekilde hazırlanması gerekir. Bu faktörlerden biri olan renklerin kullanımı, grafiklerin okunabilirliğini doğrudan etkiler. Bu yüzden istatistiksel grafiklerin oluşturulması sırasında renklerin optimum kullanımı oldukça önemlidir. Özellikle günümüzde kalıtsal bir hastalık olup görülme oranı oldukça yüksek olan  ( %8.5 Erkek - %1 Kadın ) "Renk Körü" bireylerine yönelik grafiklerin hazırlanması, istatistiksel grafiklerin daha geniş kitlelerce daha iyi okunabilmesi ve bilgi kaybı yaşanmaması gibi durumlar açısından büyük önem taşımaktadır. 
Melih Gündüz ile birlikte hazırlamış olduğumuz bu projemizde, veri görselleştirme çalışmalarında renklerin etkin ve doğru kullanımının öneminden bahsedeceğiz.
 
Projemizin ilk aşamasında "ESTÜ Fen Fakültesi" öğrencilerine renk körlüğü testi yapıp, toplamış olduğumuz verileri kontrol ettiğimizde oran açısından fazlaca renk körü bireye rastladık. Tam olarak 303 öğrenciye yapmış olduğumuz renk körlüğü testi sonucunda 26 adet renk körü bireye ulaşıldı. Bu yüzden renk körü bireylerin sayılarının göz ardı edilemeyecek kadar fazla ve grafiklerin renklendirilmesinde renk körü bireyler dikkate alınarak uygun paletler seçilmiştir. 

![a](https://user-images.githubusercontent.com/91890589/210608503-755b65df-abb0-4187-a90c-9baef920bec1.jpeg)



[MetBrewer](https://github.com/BlakeRMills/MetBrewer) hazırlamış olduğu renk paletleri, veri görselleştirmesi çalışmalarında etkin bir şekilde kullanıbilir.

## Renk Tonlarının Etkin Kullanımı

  ### Grafiklerde, belirli bir sıraya sahip veri seti değişkeni olduğunda farklı renkleri kullanmaktansa aynı rengin farklı renk tonları ile artan veya azalan şeklinde daha net bir ayrım betimlenmiş olur. 
  ![WhatsApp Image 2023-01-04 at 18 35 01 (1)](https://user-images.githubusercontent.com/91890589/210617582-cfa8c8be-ecd1-4112-848f-61ba6da4a8a3.jpeg)
![WhatsApp Image 2023-01-04 at 18 35 01](https://user-images.githubusercontent.com/91890589/210617618-8a843aef-4e03-44a1-aa4e-11b3820429b0.jpeg)

## Doğru Renk Kullanımı

### Türkiyenin 2015 yılına ait "Ormanlık Alan" sıklığını gösteren grafikleri incelediğimizde;

Türkiyede orman sıklığı hakkında bir veri görselleştirmesi olmasına rağmen, grafikte kullanılan mavi renginin orman, ağaç, yeşillik veya kahverengi gibi ormanlık alanı betimleyebilecek bir renk olmadığı açıktır. Aynı zamanda grafikte açık tonların daha sık ormanlık alanı temsil ettiğini görüyoruz. Bu durum grafiğe ilk bakışta oldukça yanlış yönlendirmeye sebep olmaktadır. 
![WhatsApp Image 2023-01-04 at 18 41 05 (2)](https://user-images.githubusercontent.com/91890589/210620284-5e7dd185-e529-4f44-93f3-adad23c72b5e.jpeg)

### İkinci grafikte açık renklerden koyu renklere doğru sıklığa göre geçiş doğru şekilde ayarlanmıştır. Özellikle yüksek derecede renk körleri için bu çeşit bir renklendirme oldukça uygundur. 
![WhatsApp Image 2023-01-04 at 18 41 05](https://user-images.githubusercontent.com/91890589/210622362-e60786dc-7d10-4520-834c-7f73d2f28e7d.jpeg)

### Son grafikte ise renk körlüğü yaşayan bireylerin de ayırt edebileceği bir renk paleti ile hazırlanmış daha estetik bir grafik görmekteyiz. Kahverenginin ormanlık alanı ve tonlarının ise sıklığını betimlediği daha net ve estetik bir şekilde görülmektedir.

![WhatsApp Image 2023-01-04 at 18 41 05 (3)](https://user-images.githubusercontent.com/91890589/210624062-f05cd393-af02-464e-8700-876e10dcf22a.jpeg)

### Renk körlüğü olmayan bireylerin bile birbirine yakın renklerin ve bunların tonlarının bir arada bulunduğu grafikleri okuyabilmeleri oldukça zor olabiliyor iken, renk körlüğü yaşayan bireylerin bu tarz grafikleri okuyabilmeleri neredeyse imkansızdır. Bu yüzden etkin renk paleti kullanımının ve renklerin bitişikliğinin kaldırılmasıyla oluşturulmuş yeni bir grafik çok daha etkili olacaktır. Aşşağıdaki grafiklerde buna ilişkin bir "Korelogram Grafiği" örneği verilmiş olup, ilk grafikte estetik karmaşıklık var iken ikinci grafiğin çok daha net biçimde okunabildiğini görüyoruz.

![WhatsApp Image 2023-01-04 at 21 28 52](https://user-images.githubusercontent.com/91890589/210628283-4e89fef4-5d9f-4961-9746-6e66499cb937.jpeg)
![WhatsApp Image 2023-01-04 at 21 10 58](https://user-images.githubusercontent.com/91890589/210628304-580f6219-32ba-4d3d-8866-a999398773da.jpeg)

### Sankey Diyagramı, kategorik değişkenlerin düzey sayısının fazla olduğu durumlarda oldukça kullanışlı bir grafiktir. Renklerin kullanımının sankey diyagramı üzerinde oldukça büyük etkisi bulunmaktadır. Diyagram için kullanılan renklerin birbirinie yakın oluşu, değişkenlerin birbirine karışmasına yol açabilecek iken doğru renk kullanımında daha anlaşılır ve net olmaktadır. Bununla ilgili örnek iki karşılaştırma aşşağıda verilmiştir.
![WhatsApp Image 2023-01-04 at 22 04 08](https://user-images.githubusercontent.com/91890589/210903730-8d3515aa-a5a6-4fa1-bba0-97da6ffffb36.jpeg)
![WhatsApp Image 2023-01-04 at 22 04 08 (1)](https://user-images.githubusercontent.com/91890589/210903735-c9e8f44c-ce00-4f9e-bcf7-bd3be72fd7a1.jpeg)



# Referanslar
1) https://medium.com/@estuveribilimi/renklerin-d%C3%BCnyas%C4%B1na-ho%C5%9F-geldiniz-836f1a9525e1
2) https://bookdown.org/content/2096/veri-gorsellestirme.html
3) https://rpubs.com/techanswers88/sankey-with-own-data-in-ggplot
4) https://github.com/mcavs/ESTUStat_2022Guz_VeriGorsellestirme/tree/main/Al%C4%B1%C5%9Ft%C4%B1rmalar
5) https://github.com/BlakeRMills/MetBrewer
6) http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette
7) https://tevfikbulut.net/rda-statik-ve-dinamik-haritalama-vaka-calismalari-turkiye-ornegi/

# Graifklerin kodlarına [buradan](https://github.com/byozbek/Veri-Gorsellestirmede-Renk-Kullanimi/blob/main/kod.R) ulaşabilirsiniz.
