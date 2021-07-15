Program TokoBunga;
uses crt;
var
        mawar,lili:integer;
        dmawar,dlili,tmawar,tlili,total1,dtotal1,total2:real;
begin
clrscr;
 writeln('        TOKO BUNGA BAGINDA');
 writeln('-----------------------------------');readln;
 writeln('(MENDAPAT DISKON JIKA MEMBELI BUNGA JENIS APAPUN DI ATAS 10 IKAT)');
 write('Masukkan jumlah bunga Mawar (Rp50.000,-/ikat) : ');readln(mawar);
 write('Masukkan jumlah bunga Lili (Rp30.000,-/ikat) : ');readln(lili);
  if mawar>10 then
   begin
    if lili>10 then
     begin
      writeln('-----------------------------------');
      writeln('Selamat Anda mendapatkan diskon sebesar potongan 10% untuk Bunga Mawar & Bunga Lili');
      dmawar:=((mawar-10)*50000)*10/100;
      tmawar:=((mawar*50000)-dmawar);
      dlili:=((lili-10)*30000)*10/100;
      tlili:=((lili*30000)-dlili);
      total1:=tmawar+tlili;
      write('Total Harga : Rp',total1:0:0);readln;
     end
    else if lili<0 then
     begin
      writeln('Data Bunga Lili Tidak Benar.');readln;
     end
    else
     begin
      writeln('-----------------------------------');
      writeln('Selamat Anda mendapatkan diskon sebesar potongan 10% untuk Bunga Mawar');
      dmawar:=((mawar-10)*50000)*10/100;
      tmawar:=((mawar*50000)-dmawar);
      tlili:=30000*lili;
      total1:=tmawar+tlili;
      write('Total Harga : Rp',total1:0:0);readln;
     end;
    end
  else if mawar<0 then
   begin
    if lili<0 then
     begin
      writeln('Data Bunga Mawar & Bunga Lili Tidak Benar.');readln;
     end
    else if lili>0 then
     begin
      writeln('Data Bunga Mawar Tidak Benar.');readln;
     end;
   end
  else
   begin
    if lili>10 then
     begin
      writeln('-----------------------------------');
      writeln('Selamat Anda mendapatkan diskon sebesar potongan 10% untuk Bunga Lili');
      tmawar:=mawar*50000;
      dlili:=((lili-10)*30000)*10/100;
      tlili:=((lili*30000)-dlili);
      total1:=tmawar+tlili;
      write('Total Harga : Rp',total1:0:0);readln;
     end
    else if lili<0 then
     begin
      writeln('Data Bunga Lili Tidak Benar.');readln;
     end
    else
     begin
      tmawar:=50000*mawar;
      tlili:=30000*lili;
      total1:=tmawar+tlili;
      write('Total Harga : Rp',total1:0:0);readln;
     end;
    end;
 if total1>2000000 then
  begin
   if mawar>=20 then
    begin
     if lili>=20 then
      begin
       dtotal1:=total1*15/100;
       total2:=total1-dtotal1;
       writeln('-----------------------------------');
       writeln('Total pembelian anda lebih dari Rp2.000.000,-, Anda berhak mendapat diskon tambahan sebesar 15%');
       writeln('Total Harga Menjadi : Rp',total2:0:0);readln;
      end;
    end;
  end;
end.
