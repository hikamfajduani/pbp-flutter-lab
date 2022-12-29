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

# Tugas 8 Pemrograman Berbasis Platform

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
`Navigator.push` merupakan sebuah metode dimana pada metode tersebut dilakukan pembuatan sebuah rute baru atau page baru yang dimana ketika dilakukan push akan terlihat seperti sebuah tumpukan screen (stack), oleh karena itu page sebelumnya tidak dihapus. Sedangkan untuk `Navigator.pushReplacement` akan mengganti page nya ke page yang baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Drawer berfungsi untuk menambahkan hamburger menu sebagai tombol routing menuju halaman lain
- Navigator berfungsi untuk melakukan navigasi menuju routing ke halaman lain
- ListTile berfungsi sebagai container sekaligus tombol untuk menuju halaman lain
- Form berfungsi sebagai container untuk widget-widget input form
- TextFormField berfungsi untuk menerima input text
- TextButton berfungsi sebagai sebuah button dengan fungsi yang dideklarasikan ketika onclick
- DropdownButtonField berfungsi untuk membuat pilihan untuk user
- Card berfungsi sebagai containerl yang digunakan untuk menampilkan informasi dalam bentuk card

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onSaved
- onChanged
- onHover
- onTap
- onFieldSubmitted
- onEditingComplete

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator di aplikasi Flutter bekerja layaknya sebuah struktur data stack dimana menggunakan prinsip Last in First out, yang dimana widget ini berfungsi untuk menumpuk sebuah page.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambahkan drawer pada `main.dart`
- Membuat sebuah page baru untuk Menambahkan Budget dengan nama `form.dart`
- Menambahkan TextField dan Dropdown untuk input menambahkan button pada `form.dart`. Selain itu, perlu juga menambahkan submit button
- Membuat sebuah page baru untuk menampilkan Data Budget yang dimasukkan pada `form.dart` dengan nama `data.dart`
- Dalam `data.dart` tersebut ditambahkan drawer dan komponen untuk menampilkan form yang tadi dibuat ke dalam page data.

# Tugas 9 Pemrograman Berbasis Platform

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON tanpa membuat model terlebih dahulu bisa dilakukan, namun response nantinya perlu didefinisikan ulang secara manual. Oleh karena itu, membuat model sebelum melakukan pengamvilan data JSON akan lebih baik, karena kita dapat merepresentasikan struktur data yang akan diterima saat melakukan pengambilan data.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- CircularProgressIndicator untuk memberikan tampilan berupa loading ketika aplikasi menunggu fecth data JSON.
- Expanded untuk memperbesar widget child sepanjang axis dari Row/Column
- FutureBuilder untuk melakukan update child dari hasil future yang diberikan
- InkWell untuk area yang akan merespon ketika ada onTap Event
- Checkbox untuk membuat checkbox

##  Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Awalnya flutter akan melakukan GET ke server. Lalu, response akan diberikan dalam bentuk JSON sesuai fungsi views yang ada pada Django. Data JSON yang diterima kemudian akan diubah ke sebuah bentuk model yang kemudian ditampilkan dengan memanfaatkan FutureBuilder.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Melakukan Refactor beberapa file ke folder model, page, atau utils, lalu menambahkan navigasi apda drawer yang mengarah ke halaman mywatchlist
- Membuat model Watchlist di folder model yang di generate dari response JSON endpoint
- membuat file watchlist_fecth di folder utils, untuk mengambil data JSON dari web service
- Membuat file watchlist_page di folder page yang akan menamvilkan judul watchlist dengan menggunakan FutureBuilder
- Membuat dile watchlist_details di folder page yang akan menampilkan detail dari tiap watchlist yang ada pada page utama. Selain itu, menambahkan button back yang akan kembali ke halaman utama
- Menambahkan InkWell widget yang akan merespon ketika diketuk dan akan mengarahkan page ke details dari judul film.
