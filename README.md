# Flutter Assignment

Devina Hana
2106751032
PBP - E

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
Stateful widget merupakan widget yang isinya dapat diubah, misalnya ketika pengguna berinteraksi dengan widget tersebut. Stateful widget ini bersifat dinamik dan umumnya berubah ketika di-_trigger_ oleh suatu _event_ yang dilakukan oleh pengguna. <br> Sementara itu, stateless widget merupakan widget yang tidak dapat diubah. Contoh dari widget ini adalah Icon, IconButton, dan Text.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
* Text<br>
Text digunakan untuk menampilkan tulisan pada aplikasi
* Row, Column<br>
Widget ini digunakan untuk membentuk _layout_ baik secara horizontal (row) maupun secara vertikal (kolom)
* Container <br>
Container digunakan untuk mengombinasikan widget-widget _painting_, _positioning_, dan _sizing_ 
* Scaffold <br>
Widget ini digunakan untuk mengimplementasikan material _layout_ desain visual, seperti _drawers_, _snack bars_, dsb

###  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
setState merupakan fungsi yang digunakan untuk melakukan pembaharuan dari layar UI secara dinamis. setState ini akan melakukan _rebuild_ dari widget-widget yang ada dan seluruh turunannya. Variabel yang dapat terdampak dari setState adalah seluruh variabel yang dapat diakses, mulai dari variabel _private_, variabel lokal, hingga variabel global.

### Jelaskan perbedaan antara const dengan final
Keduanya sama-sama digunakan sebagai _identifier_ untuk variabel yang bersifat statis/konstan (nilainya tidak dapat berubah). Perbedaannya adalah const membuat variabel bersifat konstan dimulai saat _compile time_. Sementara itu, final membuat variabel bersifat konstan dimulai saat _run time_. 

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
* Menambahkan FloatingActionButton dengan Icon remove yang dimunculkan hanya ketika counter bernilai lebih dari 0 untuk decrement counter
* Membuat fungsi decrementCounter yang terhubung dengan button tersebut untuk melakukan decrement pada counter
* Membungkus kedua FloatingActionButton tersebut pada widget Row agar ditampilkan secara horizontal
* Mengatur posisi kedua button tersebut dengan MainAxisAlignment.spaceBetween
* Membentuk conditional apakah counter tersebut genap atau ganjil untuk merubah teks dan warna yang akan ditampilkan
