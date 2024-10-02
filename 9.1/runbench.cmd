@echo off
echo sleeping
sleep 60
echo benchmarking 9.1
set EV_BACKEND=https://jdam:Idiocy4thewin@vr-91-cph.eng.local
..\install\bin\general2d-bench.exe -a ..\general2d\tests\bench_aets.json -s ..\general2d\tests\bench_studies.json -i 3 -o ..\..\bench\9.1
echo sleeping
sleep 60
echo benchmarking 9.0
..\install\bin\general2d-bench.exe -a ..\general2d\tests\bench_aets.json -s ..\general2d\tests\bench_studies.json -i 3 -o ..\..\bench\9.0 -b ..\..\clients\vitrea-read-9.0.2-869.snapshot.windows\bin\
echo sleeping
sleep 60
echo benchmarking 8.5
set EV_BACKEND=https://jalf:jalf@vr-85-9-cph.eng.local
..\install\bin\general2d-bench.exe -a ..\general2d\tests\bench_aets.json -s ..\general2d\tests\bench_studies.json -i 3 -o ..\..\bench\8.5 -b ..\..\clients\vitrea-read-8.5.5-193.snapshot.windows\bin\

set EV_BACKEND=https://jdam:Idiocy4thewin@vr-91-cph.eng.local
