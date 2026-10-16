# Contexte gargotte de Rado

+ [ ] Gargotte

  + [ ] id
  + [ ] lieu
  + [ ] nom
  + [ ] noombre de sakke
  + [ ] nombre serveurs
  + [ ] cuisinere
  + [ ] clientelle d employer
+ [X] Salle

  + [X] nombre de place
    1 gargotte  peut avoir plusieurs salles  1 gargotte <-> salles
    1 salle <-> 1 gargotte
+ [X] Salle Gargotte

  + [X] idGargotte
  + [X] idSalle
+ [ ] Personnel

  + [ ] id
  + [ ] Role  {serveurs ,cuisinere,clientelle d employe}
  + [ ] nom
    1 gargotte peut avoir plusieurs personnels mais un personnel appartiet a un seul gargotte
    1 gargotte <-> n personnel
+ [ ] Personnel Gargotte

  + [ ] idGargotte
  + [ ] idPersonnel
+ [ ] CategoriePlat

  + [ ] id
  + [ ] libelle
+ [ ] Plat

  + [ ] id
  + [ ] nom
  + [ ] categoriePlat
  + [ ] prix
+ [ ] script du plus  petit plats a bas prix aux plus chers
