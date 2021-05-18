select * from smjer
where sifra<10;

select * from osoba;

# osnovna select naredba koristi samo select
select 5;


# djelovi select naredbe
# select lista - filtriranje kolona
# * - sve kolone
select * from osoba;
# nazivi kolona odvojeni zarezom
select ime, prezime from osoba;
# kolonama se mogu dati zamjenska imena
select ime as naziv from osoba;
select oib as kljuc, ime, prezime from osoba;
select ime, prezime, ime, prezime from osoba;
select *,ime from osoba;
# može se nalaziti i konstanta
select ime, prezime, 'Osijek' as mjesto from osoba;
select 1,2,'Pero' from osoba;
# može se još nalaziti izraz(funkcija)
select upper(ime), left(ime,1) from osoba;
select now();


#filtriranje redova
# primarni ključ u where osigurava jedan red
select * from osoba where sifra=1;

# where radi s operatorima
# operatori udpoređivanja
# =, != (<>), <, >, <= i >=
select * from osoba where sifra<5;
select * from osoba where sifra!=5;
select * from osoba where sifra<>5;
select * from osoba where sifra<=5;

# logički operatori - boolovi operatori
# and, or i not
select * from osoba 
where sifra>=3 and sifra<=5;

select * from osoba where sifra=3 or sifra=5;

select * from osoba where not (
sifra=1 or ((sifra>=8 and sifra<=9) or sifra=12));