{
//ALGO: Carremagique
//BUT: Fabriquer un carre magique
//ENTREE: matrice de 5sur5
//SORTIE: Carremagique fonctionnel
CONST
	TAILLE :ENTIER <-5
Type
	Matrice= tableau[1..TAILLE,1..TAILLE] de ENTIER
	
	
//BUT: Créer le tableau, le remplir de 0 et placer le 1
//ENTREE:Matrice de 5sur5
//SORTIE: Matrice remplis de 0 avec le 1 placé au bon endroit
PROCEDURE Initialisation(VAR TMagique:Matrice;VAR placeI:ENTIER;VAR placeJ:ENTIER)
    VAR
        i:ENTIER
        j:ENTIER
DEBUT
	POUR i DE 1 A TAILLE FAIRE
	DEBUT
		POUR j DE 1 A TAILLE FAIRE
		DEBUT
		    TMagique[i][j]<-0
		FIN
		ECRIRE
	FIN
	placeI <- TAILLE DIV 2
	placeJ <- TAILLE DIV 2 + 1
    TMagique[placeI][placeJ]<-1
FIN


//BUT: Positionner les chiffres de façon à creer un carré magique
//ENTREE: Matrice remplis de 0 avec le 1 place au bon endroit
//SORTIE: Carremagique fonctionnel mais non affiché
	PROCEDURE Pos_chiffres(VAR placeJ:ENTIER;VAR placeI:ENTIER;VAR compteur:ENTIER;VAR TMagique:Matrice)
	VAR
		i,j:ENTIER
	DEBUT
		POUR i DE 1 A TAILLE FAIRE
			DEBUT
			POUR j DE 1 A TAILLE FAIRE
				DEBUT
				TMagique[i][j]<-0
				FIN
			ECRIRE
			FIN
			compteur<-1
			TANT QUE(compteur<TAILLE*TAILLE+1) FAIRE
				DEBUT
				placeI<-placeI-1
				placeJ<-placeJ+1
				ALORS(placeI < 1) ALORS
					DEBUT
					placeI<-TAILLE
					FIN
				ALORS(placeJ > TAILLE) ALORS
					DEBUT
					placeJ <- 1
					FIN
				TANT QUE(Tmagique[placeI][placeJ] <> 0) FAIRE
					DEBUT
						placeI<-placeI-1
						placeJ<-placeJ-1
						ALORS(placeI < 1) ALORS
							DEBUT
							placeI<-TAILLE
							FIN
						ALORS(placeJ > TAILLE) ALORS
							DEBUT
							placeJ<- 1
							FIN
						ALORS(placeJ < 1) ALORS
							DEBUT
							placeJ<-TAILLE
							FIN
					FIN
				Tmagique[placeI][placeJ] <- compteur
				compteur<-compteur+1
				FIN
	FIN
	

	//BUT: Afficher le carremagique fonctionnel
	//ENTREE: Carremagique fonctionnel mais non affiché
	//SORTIE: Carremagique fonctionnel et affiche a l'ecran
	PROCEDURE AffichTabFinis(TMagique:Matrice)
	VAR
		i,j:ENTIER
	DEBUT
		POUR i DE 1 A TAILLE FAIRE
		DEBUT
			POUR j DE 1 A TAILLE FAIRE
			DEBUT
				ECRIRE(Tmagique[i][j])
				ECRIRE('  ')
			FIN
			ECRIRE
		FIN
	FIN

VAR
	tab: tableau[1..TAILLE, 1..TAILLE] de ENTIER
	i,j,placeI,placeJ,compteur:ENTIER
DEBUT
    Initialisation(tab,PlaceI,placeJ)
	Pos_Chiffres(PlaceI,PlaceJ,compteur,tab)
	AffichTabFinis(tab)
FIN.

			
}
PROGRAM carre_magique;
USES crt;
CONST
	TAILLE=5;
Type
	Matrice= array[1..TAILLE, 1..TAILLE] of integer;

// Initialisation du tabeau avec des 0 + placage du 1
PROCEDURE Initialisation(VAR TMagique:Matrice;VAR placeI:integer;VAR placeJ:integer);
    VAR
        i:integer;
        j:integer;
BEGIN
	// creation du tableau type
	FOR i:=1 to TAILLE do
	BEGIN
		FOR j:=1 to TAILLE do
		BEGIN
		    TMagique[i][j]:=0;
		END;
		writeln();
	END;
	placeI := TAILLE DIV 2;
	placeJ := TAILLE DIV 2 + 1;
    TMagique[placeI][placeJ]:=1;
End;
//Positionnement des chiffres
	PROCEDURE Pos_chiffres(VAR placeJ:integer;VAR placeI:integer;VAR compteur:integer;VAR TMagique:Matrice);
	VAR
		i,j:integer;
	BEGIN
		FOR i:=1 to TAILLE do
			BEGIN
			FOR j:=1 to TAILLE do
				BEGIN
				TMagique[i][j]:=0;
				end;
			writeln();
			end;
			compteur:=1;
			WHILE(compteur<TAILLE*TAILLE+1) do
				BEGIN
				placeI:=placeI-1;
				placeJ:=placeJ+1;
				IF(placeI < 1) then
					BEGIN
					placeI:=TAILLE;
					END;
				IF(placeJ > TAILLE) then
					BEGIN
					placeJ := 1;
					END;
		
		// Positionnement des chiffres lorsque la première cellule est occupée
				WHILE(Tmagique[placeI][placeJ] <> 0) do
					BEGIN
						placeI:=placeI-1;
						placeJ:=placeJ-1;
						IF(placeI < 1) then
							BEGIN
							placeI:=TAILLE;
							END;
						IF(placeJ > TAILLE) then
							begin
							placeJ:= 1;
							END;
						IF(placeJ < 1) then
							begin
							placeJ:=TAILLE;
							END;
					END;
				Tmagique[placeI][placeJ] := compteur;
				compteur:=compteur+1;
				END;
	END;
	
	//Affichage du carre magique finis
	PROCEDURE AffichTabFinis(TMagique:Matrice);
	VAR
		i,j:integer;
	BEGIN
		for i:= 1 to TAILLE do
		begin
			for j := 1 to TAILLE do
			begin
				write(Tmagique[i][j]);
				write('  ');
			END;
			writeln();
		END;
	END;

VAR
	tab: array[1..TAILLE, 1..TAILLE] of integer;
	i,j,placeI,placeJ,compteur:integer;
BEGIN
    clrscr;
    Initialisation(tab,PlaceI,placeJ);
	Pos_Chiffres(PlaceI,PlaceJ,compteur,tab);
	AffichTabFinis(tab);
    readln;
END.



