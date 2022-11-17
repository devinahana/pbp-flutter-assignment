# Flutter Assignment

Devina Hana<br>
2106751032<br>
PBP - E<br>

## Tugas 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
Stateful widget merupakan widget yang isinya dapat diubah, misalnya ketika pengguna berinteraksi dengan widget tersebut. Stateful widget ini bersifat dinamik dan umumnya berubah ketika di-_trigger_ oleh suatu _event_ yang dilakukan oleh pengguna. Sementara itu, stateless widget merupakan widget yang tidak dapat diubah. Contoh dari widget ini adalah Icon, IconButton, dan Text.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
* Text<br>
Text digunakan untuk menampilkan tulisan pada aplikasi
* Row, Column<br>
Widget ini digunakan untuk membentuk _layout_ baik secara horizontal (row) maupun secara vertikal (kolom)
* Container <br>
Container digunakan untuk mengombinasikan widget-widget _painting_, _positioning_, dan _sizing_ 
* Scaffold <br>
Widget ini digunakan untuk mengimplementasikan material _layout_ desain visual, seperti _drawers_, _snack bars_, dsb
* FloatingActionButton <br>
Button ini merupakan widget yang ditampilkan di atas layar dan biasa digunakan untuk mengatasi suatu _event_. 

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

## Tugas 8
### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
Navigator.push() digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru yang akan ditampilkan tersebut ditampilkan di atas halaman sebelumnya. Sementara itu, Navigator.pushReplacement() juga digunakan untuk berganti halaman, tetapi perbedaanya adalah navigasi ini tidak memiliki histori sehingga halaman baru tersebut akan langsung menggantikan halaman yang sebelumnya.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
* Card<br>
Widget ini digunakan untuk membentuk card yang biasanya digunakan untuk membantu proses styling atau separasi data yang ditampilkan
* Drawer<br>
Drawer digunakan untuk membentuk hamburger menu yang digunakan sebagai navigasi
* Form<br>
Form digunakan untuk menampilkan form yang akan meminta data input dari pengguna
* TextFormField<br>
Widget ini merupakan bagian dari form yang digunakan untuk meminta input dalam bentuk teks
* ElevatedButton<br>
Widget ini merupakan sebuah button yang memiliki sedikit elevasi pada permukaannya ketika ditekan oleh pengguna
* DropdownButton<br>
Widget ini digunakan untuk menampilkan menu dropdown pada form

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
* onPressed
* onTap
* onChanged
* onHover
* onFieldSubmitted
* onLongPress
* onFocusChange
* onSaved
* onEditingComplete

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator mengganti halaman dari aplikasi flutter dengan menggunakan metode routing. Halaman-halaman yang ada akan ditumpuk pada tumpukan layar yang cara kerjanya mirip dengan stack dan menggunakan prinsip LIFO (Last-In, First-Out). Secara umum, terdapat dua method yang digunakan oleh navigator ini, yaitu Navigator.push() yang digunakan untuk menambahkan rute ke bagian atas stack (menampilkan halaman baru) dan Navigator.pop() yang digunakan untuk menghapus rute paling atas dari stack (menampilkan halaman sebelumnya).


### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
* Menambahkan drawer/hamburger menu pada setiap page
* Membentuk class MyDrawer yang akan mengembalikan menu-menu yang mengarah pada page counter_7, form, dan data budget
* Membentuk class MyForm untuk mengimplementasikan form budget yang akan diinput oleh pengguna
* Membentuk class Budget dan DataBudget yang digunakan sebagai model yang akan ditampilkan pada halaman Data Budget
* Membentuk class MyBudget yang merupakan halaman untuk menampilkan seluruh budget yang telah dimasukkan pengguna pada form