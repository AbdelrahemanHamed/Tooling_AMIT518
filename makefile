Frontend: main.c
	gcc -E main.c -o main.i
Middleend: main.c
	gcc -S main.c -o main.s
Backend: main.c
	gcc -c main.c -o main.o
Linker: main.c
	gcc -O main.c -o main.exe
Run: main.c
	.\main.exe
Build: main.c
	make Frontend
	make Middleend
	make Backend
	make Linker
Build_Run: main.c
	make Build
	make Run