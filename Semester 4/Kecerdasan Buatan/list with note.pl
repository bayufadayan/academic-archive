/*
head_tail adalah nama dari predikat (predicate) yang didefinisikan dalam klausa ini. 
Predikat merupakan sebuah hubungan atau fakta yang dinyatakan dalam program Prolog.
*/
head_tail([Head|Tail], Head, Tail).
/*
([Head|Tail], Head, Tail) adalah argumen-argumen atau parameter yang diterima oleh 
predikat head_tail. Argumen pertama [Head|Tail] adalah sebuah daftar yang terdiri 
dari Head (elemen pertama) dan Tail (bagian sisa daftar setelah elemen pertama). 
Sintaks [Head|Tail] adalah cara untuk merepresentasikan sebuah daftar dalam Prolog. 
Head merupakan elemen pertama dalam daftar, dan Tail adalah bagian sisa 
daftar setelah elemen pertama. Jika daftar kosong, maka Tail akan bernilai [] (daftar kosong).
*/

%menambahkan elemen diujung atau akhir list
/*
add_to_end adalah nama dari predikat (predicate) yang didefinisikan.
(Element, List, NewList) adalah argumen-argumen atau parameter yang diterima oleh predikat 
add_to_end. Element adalah elemen yang akan ditambahkan ke akhir daftar, List adalah daftar awal, dan NewList akan 
menjadi daftar baru yang berisi elemen-elemen dari List dengan Element ditambahkan di akhir.
append(List, [Element], NewList) adalah predikat bawaan Prolog yang digunakan untuk menggabungkan dua daftar. 
Dalam konteks klausa add_to_end, append digunakan untuk menggabungkan daftar List dengan daftar [Element] 
(daftar yang hanya berisi satu elemen Element), dan hasilnya disimpan dalam variabel NewList.
*/
add_to_end(Element, List, NewList) :-
    append(List, [Element], NewList).

%menambahkan elemen diawal list
add_to_start(Element, List, [Element|List]).

%menggabungkan dua list yang berbeda
/*
Jika daftar pertama ([]) adalah daftar kosong, maka daftar hasil penggabungan (L) akan sama dengan daftar kedua (L).
Dengan kata lain, jika tidak ada elemen yang perlu digabungkan dari daftar pertama, maka daftar hasil akan sama dengan daftar kedua.
*/
gabung([], L, L).
/*
[H|T] merupakan pola pencocokan 
(pattern matching) untuk daftar pertama, di mana H adalah elemen pertama (head) dari daftar, dan T adalah sisanya (tail).
[H|R] adalah pola pencocokan untuk daftar hasil penggabungan, di mana H adalah elemen pertama yang diambil dari daftar pertama, 
dan R adalah sisanya yang akan diisi dengan hasil penggabungan rekursif dari T dan L.
ntuk menggabungkan daftar [H|T] dengan daftar L, kita dapat mengambil elemen pertama H dari daftar [H|T], dan menggabungkan sisanya (T) 
dengan daftar L secara rekursif untuk menghasilkan R, kemudian daftar hasil penggabungan adalah [H|R].
*/
gabung([H|T], L, [H|R]) :-
    gabung(T, L, R).

%mengetahui panjang suatu list

panjang([], 0). %jika daftar ([]) adalah daftar kosong, maka panjang daftar tersebut adalah 0.
/*
[_|T] merupakan pola pencocokan (pattern matching) untuk daftar, di mana _ (underscore) adalah 
wildcard yang mencocokan dengan elemen apa pun, dan T adalah sisanya (tail)..
Secara rekursif, hitung panjang dari T (sisanya) dengan memanggil panjang(T, N1). b. Panjang daftar [_|T] adalah N1 + 1, di mana N1 adalah 
panjang dari T, dan kita menambahkan 1 untuk memperhitungkan elemen pertama (_). c. Hasil akhir (N) diperoleh dengan menyatakan N is N1 + 1.
*/
panjang([_|T], N) :-
    panjang(T, N1),
    N is N1 + 1.

%menghapus sebuah elemen pada list 
/*
jika elemen pertama (X) dari daftar ([X|T]) sama dengan elemen X yang ingin dihapus, 
maka daftar hasil (T) adalah daftar tanpa elemen pertama tersebut.
jika elemen X ditemukan di awal daftar, maka elemen tersebut dihapus, dan sisanya (T) menjadi daftar hasil.
*/
hapus(X, [X|T], T). 
/*untuk menghapus semua kemunculan X dari daftar [H|T], kita dapat melakukan langkah-langkah berikut: a. Periksa apakah X tidak sama dengan 
elemen pertama H (X \= H). b. Jika kondisi di atas terpenuhi, maka elemen pertama H dipertahankan dalam daftar hasil. c. Secara rekursif, 
hapus semua kemunculan X dari sisanya (T) dengan memanggil hapus(X, T, R). d. 
Daftar hasil akhir adalah [H|R], di mana H adalah elemen pertama yang dipertahankan, dan R adalah hasil penghapusan rekursif dari X pada T.*/
hapus(X, [H|T], [H|R]) :-
    X \= H,
    hapus(X, T, R).

%mengubah/mengganti isi elemen list
/*uuntuk mengubah semua kemunculan X menjadi Y dari daftar [H|T], kita dapat melakukan langkah-langkah berikut: 
a. Periksa apakah X tidak sama dengan elemen pertama H (X \= H). b. Jika kondisi di atas terpenuhi, 
maka elemen pertama H dipertahankan dalam daftar hasil. c. Secara rekursif, ubah semua kemunculan X menjadi Y dari sisanya (T) dengan 
memanggil ubah(X, Y, T, R). d. Daftar 
hasil akhir adalah [H|R], di mana H adalah elemen pertama yang dipertahankan, dan R adalah hasil pengubahan rekursif dari X menjadi Y pada T.*/
ubah(X, Y, [X|T], [Y|T]). 
ubah(X, Y, [H|T], [H|R]) :-
    X \= H,
    ubah(X, Y, T, R).