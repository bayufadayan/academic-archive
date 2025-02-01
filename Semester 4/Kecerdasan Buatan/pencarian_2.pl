% Fakta sambungan antar kota dan jaraknya
sambungan(jakarta, bandung, 150).
sambungan(bandung, surabaya, 350).
sambungan(jakarta, surabaya, 500).
sambungan(surabaya, makassar, 400).
sambungan(makassar, papua, 1000).

dfs(Asal, Tujuan, [Asal|Path], Totaljarak) :-
    dfs_rekursif(Asal, Tujuan, [Asal], Path, 0, Totaljarak).

dfs_rekursif(Tujuan, Tujuan, _, [], Jarak, Jarak ).
dfs_rekursif(Asal, Tujuan, Visited, [Next|Path], Jaraksaatini, Totaljarak):-
    sambungan(Asal, Next, Jaraklangkah),
    \+member(Next, Visited),
    Jarakbaru is Jaraksaatini + Jaraklangkah, 
    dfs_rekursif(Next, Tujuan, [Next|Visited], Path, Jarakbaru, Totaljarak).