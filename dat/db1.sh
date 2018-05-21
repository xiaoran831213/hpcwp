paste 01.map <(cut -f2,4- gcta/01_01.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_01.rp1
paste <(head -n 1 01_01.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_01.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_01.rp1) <(tail -n+2 gno.stt) >> 01_01.rp2
paste 02.map <(cut -f2,4- gcta/01_02.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_02.rp1
paste <(head -n 1 01_02.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_02.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_02.rp1) <(tail -n+2 gno.stt) >> 01_02.rp2
paste 03.map <(cut -f2,4- gcta/01_03.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_03.rp1
paste <(head -n 1 01_03.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_03.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_03.rp1) <(tail -n+2 gno.stt) >> 01_03.rp2
paste 04.map <(cut -f2,4- gcta/01_04.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_04.rp1
paste <(head -n 1 01_04.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_04.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_04.rp1) <(tail -n+2 gno.stt) >> 01_04.rp2
paste 05.map <(cut -f2,4- gcta/01_05.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_05.rp1
paste <(head -n 1 01_05.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_05.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_05.rp1) <(tail -n+2 gno.stt) >> 01_05.rp2
paste 06.map <(cut -f2,4- gcta/01_06.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_06.rp1
paste <(head -n 1 01_06.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_06.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_06.rp1) <(tail -n+2 gno.stt) >> 01_06.rp2
paste 07.map <(cut -f2,4- gcta/01_07.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_07.rp1
paste <(head -n 1 01_07.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_07.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_07.rp1) <(tail -n+2 gno.stt) >> 01_07.rp2
paste 08.map <(cut -f2,4- gcta/01_08.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_08.rp1
paste <(head -n 1 01_08.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_08.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_08.rp1) <(tail -n+2 gno.stt) >> 01_08.rp2
paste 09.map <(cut -f2,4- gcta/01_09.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_09.rp1
paste <(head -n 1 01_09.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_09.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_09.rp1) <(tail -n+2 gno.stt) >> 01_09.rp2
paste 10.map <(cut -f2,4- gcta/01_10.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_10.rp1
paste <(head -n 1 01_10.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_10.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_10.rp1) <(tail -n+2 gno.stt) >> 01_10.rp2
paste 11.map <(cut -f2,4- gcta/01_11.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_11.rp1
paste <(head -n 1 01_11.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_11.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_11.rp1) <(tail -n+2 gno.stt) >> 01_11.rp2
paste 12.map <(cut -f2,4- gcta/01_12.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_12.rp1
paste <(head -n 1 01_12.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_12.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_12.rp1) <(tail -n+2 gno.stt) >> 01_12.rp2
paste 13.map <(cut -f2,4- gcta/01_13.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_13.rp1
paste <(head -n 1 01_13.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_13.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_13.rp1) <(tail -n+2 gno.stt) >> 01_13.rp2
paste 14.map <(cut -f2,4- gcta/01_14.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_14.rp1
paste <(head -n 1 01_14.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_14.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_14.rp1) <(tail -n+2 gno.stt) >> 01_14.rp2
paste 15.map <(cut -f2,4- gcta/01_15.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_15.rp1
paste <(head -n 1 01_15.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_15.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_15.rp1) <(tail -n+2 gno.stt) >> 01_15.rp2
paste 16.map <(cut -f2,4- gcta/01_16.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_16.rp1
paste <(head -n 1 01_16.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_16.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_16.rp1) <(tail -n+2 gno.stt) >> 01_16.rp2
paste 17.map <(cut -f2,4- gcta/01_17.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_17.rp1
paste <(head -n 1 01_17.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_17.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_17.rp1) <(tail -n+2 gno.stt) >> 01_17.rp2
paste 18.map <(cut -f2,4- gcta/01_18.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_18.rp1
paste <(head -n 1 01_18.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_18.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_18.rp1) <(tail -n+2 gno.stt) >> 01_18.rp2
paste 19.map <(cut -f2,4- gcta/01_19.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_19.rp1
paste <(head -n 1 01_19.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_19.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_19.rp1) <(tail -n+2 gno.stt) >> 01_19.rp2
paste 20.map <(cut -f2,4- gcta/01_20.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_20.rp1
paste <(head -n 1 01_20.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_20.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_20.rp1) <(tail -n+2 gno.stt) >> 01_20.rp2
paste 21.map <(cut -f2,4- gcta/01_21.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_21.rp1
paste <(head -n 1 01_21.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_21.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_21.rp1) <(tail -n+2 gno.stt) >> 01_21.rp2
paste 22.map <(cut -f2,4- gcta/01_22.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 01_22.rp1
paste <(head -n 1 01_22.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 01_22.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 01_22.rp1) <(tail -n+2 gno.stt) >> 01_22.rp2
cat 01*.rp2 | awk 'NR==1 || $1!="seq"' | bgzip -c > 01.rp2.xz
paste 01.map <(cut -f2,4- gcta/02_01.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_01.rp1
paste <(head -n 1 02_01.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_01.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_01.rp1) <(tail -n+2 gno.stt) >> 02_01.rp2
paste 02.map <(cut -f2,4- gcta/02_02.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_02.rp1
paste <(head -n 1 02_02.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_02.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_02.rp1) <(tail -n+2 gno.stt) >> 02_02.rp2
paste 03.map <(cut -f2,4- gcta/02_03.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_03.rp1
paste <(head -n 1 02_03.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_03.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_03.rp1) <(tail -n+2 gno.stt) >> 02_03.rp2
paste 04.map <(cut -f2,4- gcta/02_04.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_04.rp1
paste <(head -n 1 02_04.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_04.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_04.rp1) <(tail -n+2 gno.stt) >> 02_04.rp2
paste 05.map <(cut -f2,4- gcta/02_05.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_05.rp1
paste <(head -n 1 02_05.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_05.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_05.rp1) <(tail -n+2 gno.stt) >> 02_05.rp2
paste 06.map <(cut -f2,4- gcta/02_06.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_06.rp1
paste <(head -n 1 02_06.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_06.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_06.rp1) <(tail -n+2 gno.stt) >> 02_06.rp2
paste 07.map <(cut -f2,4- gcta/02_07.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_07.rp1
paste <(head -n 1 02_07.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_07.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_07.rp1) <(tail -n+2 gno.stt) >> 02_07.rp2
paste 08.map <(cut -f2,4- gcta/02_08.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_08.rp1
paste <(head -n 1 02_08.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_08.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_08.rp1) <(tail -n+2 gno.stt) >> 02_08.rp2
paste 09.map <(cut -f2,4- gcta/02_09.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_09.rp1
paste <(head -n 1 02_09.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_09.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_09.rp1) <(tail -n+2 gno.stt) >> 02_09.rp2
paste 10.map <(cut -f2,4- gcta/02_10.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_10.rp1
paste <(head -n 1 02_10.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_10.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_10.rp1) <(tail -n+2 gno.stt) >> 02_10.rp2
paste 11.map <(cut -f2,4- gcta/02_11.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_11.rp1
paste <(head -n 1 02_11.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_11.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_11.rp1) <(tail -n+2 gno.stt) >> 02_11.rp2
paste 12.map <(cut -f2,4- gcta/02_12.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_12.rp1
paste <(head -n 1 02_12.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_12.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_12.rp1) <(tail -n+2 gno.stt) >> 02_12.rp2
paste 13.map <(cut -f2,4- gcta/02_13.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_13.rp1
paste <(head -n 1 02_13.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_13.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_13.rp1) <(tail -n+2 gno.stt) >> 02_13.rp2
paste 14.map <(cut -f2,4- gcta/02_14.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_14.rp1
paste <(head -n 1 02_14.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_14.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_14.rp1) <(tail -n+2 gno.stt) >> 02_14.rp2
paste 15.map <(cut -f2,4- gcta/02_15.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_15.rp1
paste <(head -n 1 02_15.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_15.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_15.rp1) <(tail -n+2 gno.stt) >> 02_15.rp2
paste 16.map <(cut -f2,4- gcta/02_16.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_16.rp1
paste <(head -n 1 02_16.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_16.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_16.rp1) <(tail -n+2 gno.stt) >> 02_16.rp2
paste 17.map <(cut -f2,4- gcta/02_17.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_17.rp1
paste <(head -n 1 02_17.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_17.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_17.rp1) <(tail -n+2 gno.stt) >> 02_17.rp2
paste 18.map <(cut -f2,4- gcta/02_18.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_18.rp1
paste <(head -n 1 02_18.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_18.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_18.rp1) <(tail -n+2 gno.stt) >> 02_18.rp2
paste 19.map <(cut -f2,4- gcta/02_19.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_19.rp1
paste <(head -n 1 02_19.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_19.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_19.rp1) <(tail -n+2 gno.stt) >> 02_19.rp2
paste 20.map <(cut -f2,4- gcta/02_20.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_20.rp1
paste <(head -n 1 02_20.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_20.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_20.rp1) <(tail -n+2 gno.stt) >> 02_20.rp2
paste 21.map <(cut -f2,4- gcta/02_21.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_21.rp1
paste <(head -n 1 02_21.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_21.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_21.rp1) <(tail -n+2 gno.stt) >> 02_21.rp2
paste 22.map <(cut -f2,4- gcta/02_22.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 02_22.rp1
paste <(head -n 1 02_22.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 02_22.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 02_22.rp1) <(tail -n+2 gno.stt) >> 02_22.rp2
cat 02*.rp2 | awk 'NR==1 || $1!="seq"' | bgzip -c > 02.rp2.xz
paste 01.map <(cut -f2,4- gcta/03_01.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_01.rp1
paste <(head -n 1 03_01.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_01.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_01.rp1) <(tail -n+2 gno.stt) >> 03_01.rp2
paste 02.map <(cut -f2,4- gcta/03_02.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_02.rp1
paste <(head -n 1 03_02.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_02.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_02.rp1) <(tail -n+2 gno.stt) >> 03_02.rp2
paste 03.map <(cut -f2,4- gcta/03_03.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_03.rp1
paste <(head -n 1 03_03.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_03.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_03.rp1) <(tail -n+2 gno.stt) >> 03_03.rp2
paste 04.map <(cut -f2,4- gcta/03_04.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_04.rp1
paste <(head -n 1 03_04.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_04.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_04.rp1) <(tail -n+2 gno.stt) >> 03_04.rp2
paste 05.map <(cut -f2,4- gcta/03_05.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_05.rp1
paste <(head -n 1 03_05.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_05.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_05.rp1) <(tail -n+2 gno.stt) >> 03_05.rp2
paste 06.map <(cut -f2,4- gcta/03_06.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_06.rp1
paste <(head -n 1 03_06.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_06.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_06.rp1) <(tail -n+2 gno.stt) >> 03_06.rp2
paste 07.map <(cut -f2,4- gcta/03_07.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_07.rp1
paste <(head -n 1 03_07.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_07.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_07.rp1) <(tail -n+2 gno.stt) >> 03_07.rp2
paste 08.map <(cut -f2,4- gcta/03_08.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_08.rp1
paste <(head -n 1 03_08.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_08.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_08.rp1) <(tail -n+2 gno.stt) >> 03_08.rp2
paste 09.map <(cut -f2,4- gcta/03_09.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_09.rp1
paste <(head -n 1 03_09.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_09.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_09.rp1) <(tail -n+2 gno.stt) >> 03_09.rp2
paste 10.map <(cut -f2,4- gcta/03_10.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_10.rp1
paste <(head -n 1 03_10.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_10.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_10.rp1) <(tail -n+2 gno.stt) >> 03_10.rp2
paste 11.map <(cut -f2,4- gcta/03_11.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_11.rp1
paste <(head -n 1 03_11.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_11.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_11.rp1) <(tail -n+2 gno.stt) >> 03_11.rp2
paste 12.map <(cut -f2,4- gcta/03_12.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_12.rp1
paste <(head -n 1 03_12.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_12.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_12.rp1) <(tail -n+2 gno.stt) >> 03_12.rp2
paste 13.map <(cut -f2,4- gcta/03_13.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_13.rp1
paste <(head -n 1 03_13.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_13.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_13.rp1) <(tail -n+2 gno.stt) >> 03_13.rp2
paste 14.map <(cut -f2,4- gcta/03_14.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_14.rp1
paste <(head -n 1 03_14.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_14.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_14.rp1) <(tail -n+2 gno.stt) >> 03_14.rp2
paste 15.map <(cut -f2,4- gcta/03_15.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_15.rp1
paste <(head -n 1 03_15.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_15.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_15.rp1) <(tail -n+2 gno.stt) >> 03_15.rp2
paste 16.map <(cut -f2,4- gcta/03_16.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_16.rp1
paste <(head -n 1 03_16.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_16.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_16.rp1) <(tail -n+2 gno.stt) >> 03_16.rp2
paste 17.map <(cut -f2,4- gcta/03_17.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_17.rp1
paste <(head -n 1 03_17.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_17.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_17.rp1) <(tail -n+2 gno.stt) >> 03_17.rp2
paste 18.map <(cut -f2,4- gcta/03_18.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_18.rp1
paste <(head -n 1 03_18.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_18.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_18.rp1) <(tail -n+2 gno.stt) >> 03_18.rp2
paste 19.map <(cut -f2,4- gcta/03_19.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_19.rp1
paste <(head -n 1 03_19.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_19.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_19.rp1) <(tail -n+2 gno.stt) >> 03_19.rp2
paste 20.map <(cut -f2,4- gcta/03_20.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_20.rp1
paste <(head -n 1 03_20.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_20.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_20.rp1) <(tail -n+2 gno.stt) >> 03_20.rp2
paste 21.map <(cut -f2,4- gcta/03_21.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_21.rp1
paste <(head -n 1 03_21.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_21.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_21.rp1) <(tail -n+2 gno.stt) >> 03_21.rp2
paste 22.map <(cut -f2,4- gcta/03_22.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1602}'  > 03_22.rp1
paste <(head -n 1 03_22.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 03_22.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 03_22.rp1) <(tail -n+2 gno.stt) >> 03_22.rp2
cat 03*.rp2 | awk 'NR==1 || $1!="seq"' | bgzip -c > 03.rp2.xz
paste 01.map <(cut -f2,4- gcta/07_01.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_01.rp1
paste <(head -n 1 07_01.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_01.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_01.rp1) <(tail -n+2 gno.stt) >> 07_01.rp2
paste 02.map <(cut -f2,4- gcta/07_02.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_02.rp1
paste <(head -n 1 07_02.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_02.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_02.rp1) <(tail -n+2 gno.stt) >> 07_02.rp2
paste 03.map <(cut -f2,4- gcta/07_03.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_03.rp1
paste <(head -n 1 07_03.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_03.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_03.rp1) <(tail -n+2 gno.stt) >> 07_03.rp2
paste 04.map <(cut -f2,4- gcta/07_04.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_04.rp1
paste <(head -n 1 07_04.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_04.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_04.rp1) <(tail -n+2 gno.stt) >> 07_04.rp2
paste 05.map <(cut -f2,4- gcta/07_05.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_05.rp1
paste <(head -n 1 07_05.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_05.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_05.rp1) <(tail -n+2 gno.stt) >> 07_05.rp2
paste 06.map <(cut -f2,4- gcta/07_06.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_06.rp1
paste <(head -n 1 07_06.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_06.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_06.rp1) <(tail -n+2 gno.stt) >> 07_06.rp2
paste 07.map <(cut -f2,4- gcta/07_07.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_07.rp1
paste <(head -n 1 07_07.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_07.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_07.rp1) <(tail -n+2 gno.stt) >> 07_07.rp2
paste 08.map <(cut -f2,4- gcta/07_08.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_08.rp1
paste <(head -n 1 07_08.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_08.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_08.rp1) <(tail -n+2 gno.stt) >> 07_08.rp2
paste 09.map <(cut -f2,4- gcta/07_09.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_09.rp1
paste <(head -n 1 07_09.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_09.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_09.rp1) <(tail -n+2 gno.stt) >> 07_09.rp2
paste 10.map <(cut -f2,4- gcta/07_10.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_10.rp1
paste <(head -n 1 07_10.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_10.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_10.rp1) <(tail -n+2 gno.stt) >> 07_10.rp2
paste 11.map <(cut -f2,4- gcta/07_11.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_11.rp1
paste <(head -n 1 07_11.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_11.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_11.rp1) <(tail -n+2 gno.stt) >> 07_11.rp2
paste 12.map <(cut -f2,4- gcta/07_12.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_12.rp1
paste <(head -n 1 07_12.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_12.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_12.rp1) <(tail -n+2 gno.stt) >> 07_12.rp2
paste 13.map <(cut -f2,4- gcta/07_13.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_13.rp1
paste <(head -n 1 07_13.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_13.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_13.rp1) <(tail -n+2 gno.stt) >> 07_13.rp2
paste 14.map <(cut -f2,4- gcta/07_14.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_14.rp1
paste <(head -n 1 07_14.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_14.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_14.rp1) <(tail -n+2 gno.stt) >> 07_14.rp2
paste 15.map <(cut -f2,4- gcta/07_15.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_15.rp1
paste <(head -n 1 07_15.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_15.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_15.rp1) <(tail -n+2 gno.stt) >> 07_15.rp2
paste 16.map <(cut -f2,4- gcta/07_16.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_16.rp1
paste <(head -n 1 07_16.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_16.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_16.rp1) <(tail -n+2 gno.stt) >> 07_16.rp2
paste 17.map <(cut -f2,4- gcta/07_17.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_17.rp1
paste <(head -n 1 07_17.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_17.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_17.rp1) <(tail -n+2 gno.stt) >> 07_17.rp2
paste 18.map <(cut -f2,4- gcta/07_18.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_18.rp1
paste <(head -n 1 07_18.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_18.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_18.rp1) <(tail -n+2 gno.stt) >> 07_18.rp2
paste 19.map <(cut -f2,4- gcta/07_19.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_19.rp1
paste <(head -n 1 07_19.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_19.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_19.rp1) <(tail -n+2 gno.stt) >> 07_19.rp2
paste 20.map <(cut -f2,4- gcta/07_20.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_20.rp1
paste <(head -n 1 07_20.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_20.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_20.rp1) <(tail -n+2 gno.stt) >> 07_20.rp2
paste 21.map <(cut -f2,4- gcta/07_21.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_21.rp1
paste <(head -n 1 07_21.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_21.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_21.rp1) <(tail -n+2 gno.stt) >> 07_21.rp2
paste 22.map <(cut -f2,4- gcta/07_22.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 07_22.rp1
paste <(head -n 1 07_22.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 07_22.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 07_22.rp1) <(tail -n+2 gno.stt) >> 07_22.rp2
cat 07*.rp2 | awk 'NR==1 || $1!="seq"' | bgzip -c > 07.rp2.xz
paste 01.map <(cut -f2,4- gcta/08_01.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_01.rp1
paste <(head -n 1 08_01.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_01.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_01.rp1) <(tail -n+2 gno.stt) >> 08_01.rp2
paste 02.map <(cut -f2,4- gcta/08_02.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_02.rp1
paste <(head -n 1 08_02.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_02.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_02.rp1) <(tail -n+2 gno.stt) >> 08_02.rp2
paste 03.map <(cut -f2,4- gcta/08_03.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_03.rp1
paste <(head -n 1 08_03.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_03.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_03.rp1) <(tail -n+2 gno.stt) >> 08_03.rp2
paste 04.map <(cut -f2,4- gcta/08_04.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_04.rp1
paste <(head -n 1 08_04.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_04.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_04.rp1) <(tail -n+2 gno.stt) >> 08_04.rp2
paste 05.map <(cut -f2,4- gcta/08_05.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_05.rp1
paste <(head -n 1 08_05.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_05.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_05.rp1) <(tail -n+2 gno.stt) >> 08_05.rp2
paste 06.map <(cut -f2,4- gcta/08_06.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_06.rp1
paste <(head -n 1 08_06.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_06.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_06.rp1) <(tail -n+2 gno.stt) >> 08_06.rp2
paste 07.map <(cut -f2,4- gcta/08_07.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_07.rp1
paste <(head -n 1 08_07.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_07.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_07.rp1) <(tail -n+2 gno.stt) >> 08_07.rp2
paste 08.map <(cut -f2,4- gcta/08_08.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_08.rp1
paste <(head -n 1 08_08.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_08.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_08.rp1) <(tail -n+2 gno.stt) >> 08_08.rp2
paste 09.map <(cut -f2,4- gcta/08_09.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_09.rp1
paste <(head -n 1 08_09.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_09.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_09.rp1) <(tail -n+2 gno.stt) >> 08_09.rp2
paste 10.map <(cut -f2,4- gcta/08_10.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_10.rp1
paste <(head -n 1 08_10.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_10.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_10.rp1) <(tail -n+2 gno.stt) >> 08_10.rp2
paste 11.map <(cut -f2,4- gcta/08_11.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_11.rp1
paste <(head -n 1 08_11.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_11.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_11.rp1) <(tail -n+2 gno.stt) >> 08_11.rp2
paste 12.map <(cut -f2,4- gcta/08_12.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_12.rp1
paste <(head -n 1 08_12.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_12.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_12.rp1) <(tail -n+2 gno.stt) >> 08_12.rp2
paste 13.map <(cut -f2,4- gcta/08_13.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_13.rp1
paste <(head -n 1 08_13.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_13.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_13.rp1) <(tail -n+2 gno.stt) >> 08_13.rp2
paste 14.map <(cut -f2,4- gcta/08_14.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_14.rp1
paste <(head -n 1 08_14.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_14.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_14.rp1) <(tail -n+2 gno.stt) >> 08_14.rp2
paste 15.map <(cut -f2,4- gcta/08_15.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_15.rp1
paste <(head -n 1 08_15.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_15.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_15.rp1) <(tail -n+2 gno.stt) >> 08_15.rp2
paste 16.map <(cut -f2,4- gcta/08_16.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_16.rp1
paste <(head -n 1 08_16.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_16.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_16.rp1) <(tail -n+2 gno.stt) >> 08_16.rp2
paste 17.map <(cut -f2,4- gcta/08_17.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_17.rp1
paste <(head -n 1 08_17.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_17.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_17.rp1) <(tail -n+2 gno.stt) >> 08_17.rp2
paste 18.map <(cut -f2,4- gcta/08_18.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_18.rp1
paste <(head -n 1 08_18.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_18.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_18.rp1) <(tail -n+2 gno.stt) >> 08_18.rp2
paste 19.map <(cut -f2,4- gcta/08_19.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_19.rp1
paste <(head -n 1 08_19.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_19.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_19.rp1) <(tail -n+2 gno.stt) >> 08_19.rp2
paste 20.map <(cut -f2,4- gcta/08_20.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_20.rp1
paste <(head -n 1 08_20.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_20.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_20.rp1) <(tail -n+2 gno.stt) >> 08_20.rp2
paste 21.map <(cut -f2,4- gcta/08_21.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_21.rp1
paste <(head -n 1 08_21.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_21.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_21.rp1) <(tail -n+2 gno.stt) >> 08_21.rp2
paste 22.map <(cut -f2,4- gcta/08_22.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 08_22.rp1
paste <(head -n 1 08_22.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 08_22.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 08_22.rp1) <(tail -n+2 gno.stt) >> 08_22.rp2
cat 08*.rp2 | awk 'NR==1 || $1!="seq"' | bgzip -c > 08.rp2.xz
paste 01.map <(cut -f2,4- gcta/09_01.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_01.rp1
paste <(head -n 1 09_01.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_01.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_01.rp1) <(tail -n+2 gno.stt) >> 09_01.rp2
paste 02.map <(cut -f2,4- gcta/09_02.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_02.rp1
paste <(head -n 1 09_02.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_02.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_02.rp1) <(tail -n+2 gno.stt) >> 09_02.rp2
paste 03.map <(cut -f2,4- gcta/09_03.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_03.rp1
paste <(head -n 1 09_03.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_03.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_03.rp1) <(tail -n+2 gno.stt) >> 09_03.rp2
paste 04.map <(cut -f2,4- gcta/09_04.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_04.rp1
paste <(head -n 1 09_04.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_04.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_04.rp1) <(tail -n+2 gno.stt) >> 09_04.rp2
paste 05.map <(cut -f2,4- gcta/09_05.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_05.rp1
paste <(head -n 1 09_05.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_05.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_05.rp1) <(tail -n+2 gno.stt) >> 09_05.rp2
paste 06.map <(cut -f2,4- gcta/09_06.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_06.rp1
paste <(head -n 1 09_06.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_06.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_06.rp1) <(tail -n+2 gno.stt) >> 09_06.rp2
paste 07.map <(cut -f2,4- gcta/09_07.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_07.rp1
paste <(head -n 1 09_07.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_07.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_07.rp1) <(tail -n+2 gno.stt) >> 09_07.rp2
paste 08.map <(cut -f2,4- gcta/09_08.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_08.rp1
paste <(head -n 1 09_08.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_08.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_08.rp1) <(tail -n+2 gno.stt) >> 09_08.rp2
paste 09.map <(cut -f2,4- gcta/09_09.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_09.rp1
paste <(head -n 1 09_09.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_09.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_09.rp1) <(tail -n+2 gno.stt) >> 09_09.rp2
paste 10.map <(cut -f2,4- gcta/09_10.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_10.rp1
paste <(head -n 1 09_10.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_10.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_10.rp1) <(tail -n+2 gno.stt) >> 09_10.rp2
paste 11.map <(cut -f2,4- gcta/09_11.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_11.rp1
paste <(head -n 1 09_11.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_11.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_11.rp1) <(tail -n+2 gno.stt) >> 09_11.rp2
paste 12.map <(cut -f2,4- gcta/09_12.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_12.rp1
paste <(head -n 1 09_12.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_12.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_12.rp1) <(tail -n+2 gno.stt) >> 09_12.rp2
paste 13.map <(cut -f2,4- gcta/09_13.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_13.rp1
paste <(head -n 1 09_13.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_13.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_13.rp1) <(tail -n+2 gno.stt) >> 09_13.rp2
paste 14.map <(cut -f2,4- gcta/09_14.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_14.rp1
paste <(head -n 1 09_14.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_14.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_14.rp1) <(tail -n+2 gno.stt) >> 09_14.rp2
paste 15.map <(cut -f2,4- gcta/09_15.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_15.rp1
paste <(head -n 1 09_15.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_15.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_15.rp1) <(tail -n+2 gno.stt) >> 09_15.rp2
paste 16.map <(cut -f2,4- gcta/09_16.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_16.rp1
paste <(head -n 1 09_16.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_16.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_16.rp1) <(tail -n+2 gno.stt) >> 09_16.rp2
paste 17.map <(cut -f2,4- gcta/09_17.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_17.rp1
paste <(head -n 1 09_17.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_17.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_17.rp1) <(tail -n+2 gno.stt) >> 09_17.rp2
paste 18.map <(cut -f2,4- gcta/09_18.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_18.rp1
paste <(head -n 1 09_18.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_18.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_18.rp1) <(tail -n+2 gno.stt) >> 09_18.rp2
paste 19.map <(cut -f2,4- gcta/09_19.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_19.rp1
paste <(head -n 1 09_19.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_19.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_19.rp1) <(tail -n+2 gno.stt) >> 09_19.rp2
paste 20.map <(cut -f2,4- gcta/09_20.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_20.rp1
paste <(head -n 1 09_20.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_20.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_20.rp1) <(tail -n+2 gno.stt) >> 09_20.rp2
paste 21.map <(cut -f2,4- gcta/09_21.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_21.rp1
paste <(head -n 1 09_21.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_21.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_21.rp1) <(tail -n+2 gno.stt) >> 09_21.rp2
paste 22.map <(cut -f2,4- gcta/09_22.mlma) | awk 'NR==1 {print -bash,"N"}; NR>1 {print $0,1416}'  > 09_22.rp1
paste <(head -n 1 09_22.rp1 | cut -f1-14) <(head -n 1 gno.stt | cut -f2-6)                      > 09_22.rp2
join -o 1.{1..14} 2.{2..6} -a1 -e "NA" <(tail -n+2 09_22.rp1) <(tail -n+2 gno.stt) >> 09_22.rp2
cat 09*.rp2 | awk 'NR==1 || $1!="seq"' | bgzip -c > 09.rp2.xz
