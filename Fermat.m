N :=132362012368784657598337070835114301853297496202727545041584894911421861597979639465242812835254567141300070580488161773736382131835329;

B := Ceiling(Sqrt(N));
a:=2;

for i:=1 to B do
  j := N + i^2;
  if IsSquare(j) then
    k:=Sqrt(j);
    p:= Abs(i+k);
    q:= Abs(i-k);
    break;
  end if;
  printf "ciclo n. %3o\n", i;
end for;

p;
q;

SetOutputFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt": Overwrite := true);
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt", "p = " cat IntegerToString(p));
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt", "q = " cat IntegerToString(q));
UnsetOutputFile();
