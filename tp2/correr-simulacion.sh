/opt/valgrind/bin/valgrind  --log-file="cgrind_1_1x1.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_1x1.txt > cgrind_1_1x1.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_1x1.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_2x2.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_2x2.txt > cgrind_1_2x2.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_2x2.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_3x3.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_3x3.txt > cgrind_1_3x3.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_3x3.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_4x4.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_4x4.txt > cgrind_1_4x4.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_4x4.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_5x5.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_5x5.txt > cgrind_1_5x5.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_5x5.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_6x6.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_6x6.txt > cgrind_1_6x6.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_6x6.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_7x7.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_7x7.txt > cgrind_1_7x7.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_7x7.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_1_8x8.txt" --I1=32768,4,32 --D1=32768,1,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_8x8.txt > cgrind_1_8x8.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_1_8x8.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_1x1.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_1x1.txt > cgrind_2_1x1.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_1x1.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_2x2.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_2x2.txt > cgrind_2_2x2.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_2x2.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_3x3.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_3x3.txt > cgrind_2_3x3.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_3x3.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_4x4.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_4x4.txt > cgrind_2_4x4.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_4x4.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_5x5.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_5x5.txt > cgrind_2_5x5.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_5x5.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_6x6.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_6x6.txt > cgrind_2_6x6.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_6x6.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_7x7.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_7x7.txt > cgrind_2_7x7.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_7x7.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_2_8x8.txt" --I1=32768,4,32 --D1=32768,2,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_8x8.txt > cgrind_2_8x8.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_2_8x8.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_1x1.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_1x1.txt > cgrind_4_1x1.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_1x1.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_2x2.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_2x2.txt > cgrind_4_2x2.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_2x2.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_3x3.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_3x3.txt > cgrind_4_3x3.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_3x3.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_4x4.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_4x4.txt > cgrind_4_4x4.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_4x4.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_5x5.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_5x5.txt > cgrind_4_5x5.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_5x5.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_6x6.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_6x6.txt > cgrind_4_6x6.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_6x6.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_7x7.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_7x7.txt > cgrind_4_7x7.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_7x7.txt;
rm cachegrind.out.*;


/opt/valgrind/bin/valgrind  --log-file="cgrind_4_8x8.txt" --I1=32768,4,32 --D1=32768,4,32 --tool=cachegrind /tmp/02-mmult < /root/CARPETA/tp2-2020-2q-src/input_8x8.txt > cgrind_4_8x8.txt;
/opt/valgrind/bin/cg_annotate cachegrind.out.* /root/CARPETA/tp2-2020-2q-src/main.c >> cgrind_4_8x8.txt;
rm cachegrind.out.*;
