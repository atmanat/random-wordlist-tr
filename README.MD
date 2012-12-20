### Dosya İçeriği

* `randomlist.sh`: Rastgele sözcük listesi üreten betik.
* `trlist-orig.txt`: http://tr.wiktionary.org/ toplandığı şekliyle sözcük listesi.
* `trlist.txt`: sadece ASCII karakterlere indirgenmiş sözcük listesi.

### Örnek kullanım:

`./randomlist.sh`

trlist.txt dosyasından 10 adet rastgele satır seçer ve 10-trlist.txt dosyasına yazar.

***

`./randomlist.sh a.txt`

a.txt dosyasından 10 adet rastgele satır seçer ve 10-a.txt dosyasına yazar.

***

`./randomlist.sh a.txt 55`

a.txt dosyasından 55 adet rastgele satır seçer ve 55-a.txt dosyasına yazar.

***

`./randomlist.sh a.txt 55 b.txt`

a.txt dosyasından 55 adet rastgele satır seçer ve b.txt dosyasına yazar.
