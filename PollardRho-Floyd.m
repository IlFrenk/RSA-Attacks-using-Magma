//testi cifrati c1, c2
//chiave pubblica (N,e)
//trovare m1 e m2 t.c. m2=m1+1

number :=132362012368784657598337070835114301853297496202727545041584894911421861597979639465242812835254567141300070580488161773736382131835329;
e :=3;
c1 :=71397278840397681501160368435542339028702524916391967096413641093753736972930442238602166465552257985142739663104816951020820878864500;
c2 :=50845487633428496365003540587311272139789834209428141986455814191456615469979700450440942890727117899617978501500241147645668764113067;


x_fixed := 2;
cycle_size := 2;
x := 2;
factor := 1;
alarmer := 0;

while factor eq 1 do
    count := 1;
    alarmer := alarmer + 1;
    printf "siamo al ciclo %o\n", alarmer;
    while count le cycle_size and factor le 1 do
        x := (x^2 + 1) mod number;
        factor := GCD(x - x_fixed, number);
        count := count + 1;
    end while;
    cycle_size := cycle_size * 2;
    x_fixed := x;
end while;

printf "\nun fattore e' %o\n", factor;

SetOutputFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt": Overwrite := true);
PrintFile("C:/Users/Frenk/Desktop/MAGISTRALE/Crittografia e Applicazioni/CryptoWars/es13.txt", "p = " cat IntegerToString(factor));
UnsetOutputFile();
