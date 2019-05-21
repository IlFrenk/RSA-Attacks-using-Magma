N1 :=1371369341274601948778278636423406690031517505123926008773053567592011624152780573861293737219;
e1 :=14613992044615514362873325722734275801042498633752586509535659216428873147567136300337933519;

repeat
  printf "Vuoi l'input interattivo? [si/no]";
  read s;
  if s eq "si" then
    printf "\ninserisci N: ";
    readi N;
    printf "\ninserisci e: ";
    readi e;
    printf "\n";
  elif s eq "no" then
    N := N1;
    e := e1;
  else
    printf "\nscrivi si oppure no.\n";
  end if;
until s eq "si" or s eq "no";
NFact := Factorization(N);
pExp := NFact[1];
qExp := NFact[2];
q := qExp[1];
p := pExp[1];
FiN := (p-1)*(q-1);
d := Modinv(e, FiN);
printf "\np = ";
p;
printf "q = ";
q;
printf "d = ";
d;
printf "\n";
if p*q eq N then
  printf "p*q fa n. DAGLIE!\n";
else
  printf "p*q non fa n. GIM DUELLE\n";
end if;
if e eq Modinv(d, FiN) then
  printf "d e' l'inverso di e. GOOD.\n";
else
  printf "d non e' l'inverso di e.\n";
end if;

SetOutputFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es3.txt": Overwrite := true);
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es3.txt", "p = " cat IntegerToString(p));
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es3.txt", "q = " cat IntegerToString(q));
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es3.txt", "d = " cat IntegerToString(d));
UnsetOutputFile();
