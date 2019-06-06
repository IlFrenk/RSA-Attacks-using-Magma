N :=132362012368784657598337070835114301853297496202727545041584894911421861597979639465242812835254567141300070580488161773736382131835329;
e :=3;
c1 :=71397278840397681501160368435542339028702524916391967096413641093753736972930442238602166465552257985142739663104816951020820878864500;
c2 :=50845487633428496365003540587311272139789834209428141986455814191456615469979700450440942890727117899617978501500241147645668764113067;

m1:=0;
m2:=0;
i:=1;
while m2 ne m1+1 do
  printf "ciclo n. %o\n", i;
  m1:=c1^e mod N;
  m2:=c2^e mod N;
  i:=i+1;
end while;

if m2 eq m1+1 then
  printf "\nAMBEE\n";
else
  printf "\nAMMERDA\n";
end if;

SetOutputFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13r.txt": Overwrite := true);
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13r.txt", "m1 = " cat IntegerToString(m1));
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13r.txt", "m2 = " cat IntegerToString(m2));
UnsetOutputFile();
