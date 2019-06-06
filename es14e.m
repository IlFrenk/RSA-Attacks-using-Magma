p :=7051466090017582760468033621167348009665632318529685958087291401787;
A :=2743970021377090968731687061041143484224355668650443656585307347083;
B :=6148133312014090475848565033931537188484203236481408679192013441805;
xP :=4081077406600548931420225424257529659934899599734060140781513336407;
yP :=1740895731316452036179218259127894340115777194820638900169103916040;
xQ :=3800700516917880799029966877141371748486468225550440505666976154899;
yQ :=6504354983938151432309918825006854999702124451844554287058287622577;
xB1 :=1545882403555686666917447308199212196577837278757584949323801649222;
yB1 :=4783478839322835105086384952394153227800732092633274369797584809619;
xB2 :=6352514935682007990347736514272294068769356753184866426284779339263;
yB2 :=2033753087035202338864419028922799329012630388306417250970333720839;


while GCD(q,N) eq 1 do

  E:=EllipticCurve([F| A, B]);
  P := E![xP, yP];
  oP:=Order(P);
  Q := E![xQ,yQ];
end while;