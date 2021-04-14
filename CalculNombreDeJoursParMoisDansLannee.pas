Program CalculNombreDeJoursParMoisDansLannee;
type
   vector = array [ 0..11] of Integer;

var 
somme,i, annee: Integer;
mois: vector;


begin
i := 0;
somme := 0;
annee :=2;

//demander au utilisateur de saisir le type de l'annee bessixtile ou pas
repeat
    
    writeln('Veuillez entrer 1 pour annee bessixtile ou bien 0 pour annee non bessixtile, merci!');
    
    read(annee);
    
until (annee = 0) or (annee = 1) ;


//initialiser le tableau à zero
for i:= 0 to 11 do
	begin
		mois[i] := 0;
	end;

//si l'annee est bessixtile
if(annee = 1) then
	begin
        for i:= 0 to 11 do
	        begin
	            case (i+1) of
                    	1 , 3 , 5, 7 ,8 ,10 , 12 : mois[i] := 31;
	                    2 : mois[i] := 28;
	                    4, 6 , 9 ,11 : 	mois[i] := 30;
	            end;
	        end;
    end;

//si l'annee est non bessixtile
if(annee = 0) then
	begin
        for i:= 0 to 11 do
	        begin
	            case (i+1) of
                    	1 , 3 , 5, 7 ,8 ,10 , 12 : mois[i] := 31;
	                    2 : mois[i] := 29;
	                    4, 6 , 9 ,11 : 	mois[i] := 30;
	            end;
	        end;
    end;


//affichage des jours des mois de l'annee suivant la bessixtilite de l'annee ou pas
for i:= 0 to 11 do
	begin
		write('la valeur de mois ',i+1);
		writeln(' est de: ',mois[i]);
	end;



end.