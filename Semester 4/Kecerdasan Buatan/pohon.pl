% definisi anggota keluarga
node(kakek). 
node(nenek).
node(ayah).
node(ibu). 
node(paman).
node(bibi).
node(budi).
node(anto).
node(wati).

% hubungan orang tua - anak
parent(kakek, ayah).
parent(nenek, ayah).
parent(ayah, budi). 
parent(ayah, anto).

% hubungan saudara kandung  
sibling(ayah, paman).

% hubungan paman/bibi ke keponakan
uncle(paman, budi).
aunt(bibi, budi).
% hubungan sepupu  
cousin(budi, wati).
cousin(anto, wati).