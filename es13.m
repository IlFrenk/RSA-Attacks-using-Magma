//testi cifrati c1, c2
//chiave pubblica (N,e)
//trovare m1 e m2 t.c. m2=m1+1
//chococciuli

N :=132362012368784657598337070835114301853297496202727545041584894911421861597979639465242812835254567141300070580488161773736382131835329;
e :=3;
c1 :=71397278840397681501160368435542339028702524916391967096413641093753736972930442238602166465552257985142739663104816951020820878864500;
c2 :=50845487633428496365003540587311272139789834209428141986455814191456615469979700450440942890727117899617978501500241147645668764113067;


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

SetOutputFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt": Overwrite := true);
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt", "p = " cat IntegerToString(p));
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt", "q = " cat IntegerToString(q));
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt", "d = " cat IntegerToString(d));
UnsetOutputFile();
