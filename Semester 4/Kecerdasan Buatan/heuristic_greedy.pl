% Predikat untuk mendefinisikan sambungan antara dua kota beserta jaraknya
sambungan(jakarta, bandung, 150). % Sambungan antara Jakarta dan Bandung dengan jarak 150
sambungan(bandung, surabaya, 350). % Sambungan antara Bandung dan Surabaya dengan jarak 350
sambungan(jakarta, surabaya, 500). % Sambungan antara Jakarta dan Surabaya dengan jarak 500
sambungan(surabaya, makassar, 400). % Sambungan antara Surabaya dan Makassar dengan jarak 400
sambungan(makassar, papua, 1000). % Sambungan antara Makassar dan Papua dengan jarak 1000

% Predikat untuk mendefinisikan heuristik dari setiap kota
heuristik(jakarta, 1000). % Heuristik untuk kota Jakarta dengan nilai 1000
heuristik(bandung, 900). % Heuristik untuk kota Bandung dengan nilai 900
heuristik(surabaya, 600). % Heuristik untuk kota Surabaya dengan nilai 600
heuristik(makassar, 300). % Heuristik untuk kota Makassar dengan nilai 300
heuristik(papua, 0). % Heuristik untuk kota Papua dengan nilai 0

% Predikat untuk melakukan pencarian Greedy Best-First Search dari Asal ke Tujuan
greedy_best_first_search(Asal, Tujuan, Path) :-
    greedy_search([[Asal]], Tujuan, RevPath), % Mulai pencarian dari Asal, inisialisasi jalur kosong
    reverse(RevPath, Path). % Balik jalur pencarian yang ditemukan untuk mendapatkan jalur dari Asal ke Tujuan

% Predikat untuk melakukan pencarian Greedy Search
greedy_search([CurrentPath|_], Tujuan, CurrentPath) :- % Jika jalur saat ini mencapai Tujuan, selesaikan pencarian
    CurrentPath = [Tujuan|_].

% Predikat untuk memperluas jalur pencarian Greedy Search
greedy_search([CurrentPath|OtherPaths], Tujuan, Path) :-
    extend_path_greedy(CurrentPath, NewPaths), % Perluas jalur pencarian saat ini
    append(OtherPaths, NewPaths, Paths), % Gabungkan jalur yang diperluas dengan jalur lainnya
    sort_paths(Paths, SortedPaths), % Urutkan jalur berdasarkan heuristik
    greedy_search(SortedPaths, Tujuan, Path). % Lanjutkan pencarian dengan jalur yang telah diurutkan

% Predikat untuk memperluas jalur pencarian Greedy Search
extend_path_greedy([Current|Path], NewPaths) :-
    findall([New, Current|Path],
            (sambungan(Current, New, _), \+ member(New, [Current|Path])), % Cari semua kota terhubung yang belum dikunjungi sebelumnya
            NewPaths).

% Predikat untuk mengurutkan jalur berdasarkan heuristik
sort_paths(Paths, SortedPaths) :-
    maplist(path_heuristic, Paths, PathsWithHeuristic), % Hitung heuristik untuk setiap jalur
    sort(1, @=<, PathsWithHeuristic, SortedPathsWithHeuristic), % Urutkan jalur berdasarkan heuristik
    pairs_values(SortedPathsWithHeuristic, SortedPaths). % Ambil jalur setelah diurutkan

% Predikat untuk menghitung heuristik dari sebuah jalur
path_heuristic(Path, Heuristic-Path) :-
    Path = [Node|_], % Ambil kota pertama dari jalur
    heuristik(Node, Heuristic). % Hitung heuristik untuk kota pertama dalam jalur
