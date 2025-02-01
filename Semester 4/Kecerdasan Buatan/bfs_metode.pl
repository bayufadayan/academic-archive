% Definisikan connected/3 sebagai fakta yang menyatakan hubungan antar kota dan jaraknya(kilometer).
connected(jakarta, bandung, 150).
connected(jakarta, semarang, 450).
connected(bandung, semarang, 300).
connected(semarang, yogyakarta, 130).
connected(yogyakarta, surabaya, 350).
connected(semarang, surabaya, 330).

% Mencari jalur dengan BFS
bfs(Start, Goal) :- %melakukan rules pencarian dari start(kota awal) dan Goal (kota tujuan)
    bfs_queue([[Start]], Goal, Visited), %memulai pencarian dari titik awal kota dan tujuan kota dan menyimpan kedalam visited sebagai jalur yang ditemukan
    reverse(Visited, Path), %membalikan urutan jalur yang ditemukan sehingga dapat mendeteksi jalur walau perubahan posisi pencarian kota
    write('Jalur: '), print_path(Path). %mencetak jalur yang dibuat 

% Mengelola antrian dari jalur yang akan dieksplorasi
bfs_queue([[Goal|Path]|_], Goal, [Goal|Path]). %ketika jalur yang sedang dieksplorasi ([Goal|Path]) telah mencapai tujuan (Goal)
bfs_queue([Path|Queue], Goal, Visited) :- %maka  antrian jalur tersebut dikembalikan sebagai Visited(jalur yang telah dikunjungi)
    extend(Path, NewPaths), %ketika jalur belum mencapai tujuan maka fungsi bfs_queue akan mengekstend jalurnya 
    append(Queue, NewPaths, NewQueue),%setelah itu menggabungkan jalur baru dengan antrian menggunakan append
    bfs_queue(NewQueue, Goal, Visited).%pada akhirnya fugsi ini akan memanggil suatu antrian baru dengan kota awal dan tujuan yang sudah diketahui

% Menghasilkan semua jalur baru yang mungkin dari jalur saat ini
/*Ia mencari semua kota NewNode yang terhubung dengan Node terakhir pada jalur saat ini dan belum dikunjungi
 sebelumnya (\+ member(NewNode, [Node|Path])). 
Semua jalur baru yang dihasilkan ([NewNode,Node|Path]) dikumpulkan dalam NewPaths.*/
extend([Node|Path], NewPaths) :-
    findall([NewNode,Node|Path],
            (connected(Node, NewNode, _), \+ member(NewNode, [Node|Path])),
            NewPaths),
    !.

% Mencetak jalur dari awal ke tujuan
print_path([]). %ketika jalur kosong, maka tidak ada yang dicetak
print_path([H|T]) :-
/*ketika jalur tidak kosong, maka print_path akan mencetak elemen terakhir (H) dari jalur ([H|T]), diikuti dengan tanda ' -> ', kemudian memanggil print_path/1 secara 
rekursif dengan sisa jalur (T). fail digunakan untuk memaksa backtracking dan mencetak semua elemen jalur*/
    print_path(T),
    write(H), write(' -> '), fail.
print_path(_).

%intinya mengeksplorasi semua jalur yang mungkin dan mengembalikan jalur terpendek yang ditemukan.
