# README - コンパイルオプションについて

## Intel Compiler 

### intel compiler for general
- `-heap-arrays`
  - 自動配列および一時的な計算用に作成される配列をスタックではなくヒープ上に割り当て
- `-mcmodel=large` (not valid in Mac)
  - 2GB を超えるメモリー割り当てを可能にする．
- `-r8`
  - 強制的に倍精度で計算
- `-module`
  - モジュールファイルの作成時に配置するディレクトリとそれらを検索するディレクトリを指定
- `-c`
  - リンクなしでコンパイル


### intel compiler for debug 
- `-g`
  - デバッグのために必要な基本的なオプション
  - オブジェクト・ファイルにすべてのデバッグ情報を生成するようにコンパイラーに指示
- `-traceback`
  - プログラムが終了した地点を表示する
  - ランタイム時に致命的なエラーが発生したとき，ソースファイルのトレースバック情報を表示できるように，オブジェクト・ファイル内に補足情報を生成するようにコンパイラーに指示
- `-CB`
  - 配列の範囲外参プログラムの実行を中断する
- `-O0`
  - 最適化をしない
- `-fpe0`
  - 0 割や NaN が発生した時にプログラムの実行を中断する
- `-warn all`
  - 全ての警告を表示する

### intel compiler for release
- `-O3`
  - 最適化を実施．プログラムの実行が高速になる．
  - デフォルトは `-O2`
- `-xHost`
  - 搭載されている CPU を調べて，最適化．

### intel compiler in Mac
- `-L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib`
  - おまじない

### Memo & Reference

- [mcmodel](http://www2.kobe-u.ac.jp/~lerl2/l_cc_p_10.1.008/doc/main_cls/mergedProjects/copts_cls/common_options/option_mcmodel.htm)
- [コンパイラー・オプションのアルファベット順リスト](https://jp.xlsoft.com/documents/intel/compiler/18/for_18_win_lin/GUID-F1391F3A-D995-4EBE-BBDA-9A07D601C2F3.html)
- [コンパイラのオプション (Compiler Options) - A Fast Course in Fortran 90/95](https://sites.google.com/site/fcfortran/home/option)
- [インテルコンパイラの最適化オプションについて - 株式会社HPCソリューションズ](https://www.hpc-sol.co.jp/support/tech/optimization/)


---

## gfortran

### gfortran compiler for debug 
- `-g`
  - デバッグのために必要な基本的なオプション
- `-fbacktrace`
  - プログラムが終了した地点を表示する
- `-fbounds_check`
  - 配列の範囲外参プログラムの実行を中断する
- `-O0`
  - 最適化しない
- `-ffpe-trap=invalid,zero,overflow`
  - 0 割や NaN が発生した時にプログラムの実行を中断する

### gfortran compiler for release

- `-O3`
  - 最適化する


### Memo & Reference

- [コンパイラのオプション (Compiler Options) - A Fast Course in Fortran 90/95](https://sites.google.com/site/fcfortran/home/option)
- [Optimize Options (Using the GNU Compiler)](https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html)

