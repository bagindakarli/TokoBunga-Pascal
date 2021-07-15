Program TokoBunga;
uses crt;
var
        mawar,lili:integer;
        hmawar,hlili:real;
        tmawar,mawarlebih,mawardiskon,mawarnormal,tlili,lililebih,lilidiskon,lilinormal:real;
        ada:string;
begin
clrscr;
write('Masukkan jumlah bunga Mawar : ');readln(mawar);
write('Masukkan jumlah bunga Lili : ');readln(lili);
writeln('-----------------------------');
hmawar:=50000;
hlili:=30000;
if mawar>=0 and mawar<=10 then
        begin
                tmawar:=hmawar*mawar;
        end
else if mawar >10 then
        begin
                mawarlebih:=mawar-10;
                mawardiskon:=(mawarlebih*(10/100))*hmawar;
                mawarnormal:=(mawar-mawarlebih)*hmawar;
                tmawar:=mawarnormal+mawardiskon;
                ada:=('(Ada tambahan diskon 15% untuk pembelian selanjutnya di atas 10 bunga)');
        end
else
        begin
                write('Data bunga mawar salah');
        end;

if lili >=0 and <=10 then
        begin
                tlili:=hlili*lili;
        end
else if lili>10 then
        begin
                lililebih:=lili-10;
                lilidiskon:=(lililebih*(10/100))*hlili;
                lilinormal:=(lili-lililebih)*hlili;
                tlili:=lilinormal+lilidiskon;
                ada:=('(Ada tambahan diskon 15% untuk pembelian selanjutnya di atas 10 bunga)');
        end
else
        begin
                write('Data bunga mawar salah');
        end;
totalharga:tmawar+tlili;
writeln('Total Harga : ',total harga, a');
end.