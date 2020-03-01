del gb.out.*
lcc -o out.gb gb.c -tempdir=tmp -Wa-l 2> gb.out.log
start "" visualboyadvance out.gb