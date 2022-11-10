# Tugas 7 Pemrograman Berbasis Platform

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah sebuah widget yang tidak dapat dirubah atau tidak akan pernah berubah. Sedangkan Stateful Widget merupakan widget yang dinamis atau dapat berubah. Berbanding terbalik dengan stateless, stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris dll. Jadi dapat disimpulkan bahwa apapun widget yang dapat berubah maka itulah stateful widget.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Scaffold yaitu widget utama yang digunakan untuk membuat halaman pada flutter
- MaterialApp yaitu widget yang digunakan untuk membuat aplikasi
- AppBar yaitu widget yang digunakkan untuk membuat bar yang posisinya diatas layar
- Center yaitu widget yang digunakan untuk meletakkan child widget di tengah parent
- Column yaitu widget yang digunakan untuk meletakkan child widget ke dalam kolom yang sama
- Text yaitu widget yang digunakan untuk membuat dan menampilkan teks
- Container yaitu widget yang digunakan untuk membungkus widget lain
- Row yaitu widget yang digunakan untuk menyimpan child widget didalam satu baris
- Icon yaitu widget yang digunakan untuk menggunakan icon
- FloatingActionButton yaitu widget yang digunakan untuk menampilkan button yang posisinya melayang (float)



## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` memiliki fungsi untuk menginformasikan widget-widget bahwa terdapat objek yang nilainya berubah pada State dalam hal ini Counter. Oleh karena itu aplikasi akan merefresh widget dengan nilai yang terbaru. Selain itu, untuk variabel yang terdampak dengan fungsi `setState()` ini yaitu semua variabel yang terdapat pada class main kecuali variabel const dan final.

## Jelaskan perbedaan antara const dengan final.
Const merupakan sebuah syntax yang digunakan untuk melakukan deklarasi dari variael yang immutable atau explicit, selain itu yang telah diketahui ketika dilakukan proses compile. Sedangkan untuk final sendiri merupakan syntax yang digunakan ketika deklarasi variabel yang immutable juga, namun nilai yang explicit tidak diharuskan, selain itu akan diinisialisasi hanya pada saat pertama digunakan.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuka folder yang akan digunakan untuk membuat project flutter.
- Membuka command promp lalu menjalankan perintah `flutter create counter_7` 
- Mengecek aplikasi flutter berjalan atau tidak dengan membuka folder counter_7 tersebut dan menjalankan perintah `flutter run`
- Jika flutter sudah berjalan, selanjutnya dilakukan modifikasi kode agar dapat menjalankan program seperti yang diinginkan pada tugas 7
- Menduplikat fungsi `_incrementCounter()` lalu mengubahnya menjadi fungsi `_decrementCounter()`
- Memodifikasi fungsi tersebut dengan mengubah kondisional counternya menjadi `_counter--` agar dapat mengurangi nilainya
- Mengubah titel pada myHompage menjadi `Program Counter`
- Pada body, ditambahkan/membuat if else kondisional yang mana akan dicek ketika variable counter akan bernilai ganjil maupun genap lalu menampilkan kondisi tersebut sesuai dengan angka yang ditampilkan pada saat melakukan counter.
- Memodifikasi dan menambahkan button, yaitu menambahkan button yang akan menampung perintah dari `_decrementCounter()`
