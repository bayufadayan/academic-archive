%menambahkan elemen diujung atau akhir list
add_to_end(Element, List, NewList) :-
    append(List, [Element], NewList).

%menambahkan elemen diawal list
add_to_start(Element, List, [Element|List]).

%menggabungkan dua list yang berbeda
gabung([], L, L).
gabung([H|T], L, [H|R]) :-
    gabung(T, L, R).

%mengetahui panjang suatu list
panjang([], 0).
panjang([_|T], N) :-
    panjang(T, N1),
    N is N1 + 1.

%menghapus sebuah elemen pada list 
hapus(X, [X|T], T). 
hapus(X, [H|T], [H|R]) :-
    X \= H,
    hapus(X, T, R).

%mengubah/mengganti isi elemen list
ubah(X, Y, [X|T], [Y|T]). 
ubah(X, Y, [H|T], [H|R]) :-
    X \= H,
    ubah(X, Y, T, R).