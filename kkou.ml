(* Définition de fonction *)

let neg = function true -> false
                 |false -> true ;;

(* Appel de fonction *)

let resultat = neg true;;


(*Analyse par motif ou par cas*)
let div x y = match y with
  |0 -> failwith "kk"
  |_ -> x/y ;;


(* Type des données très stricte; un floatant n'est pas un entier  *)
let divi x y = x/.y ;;

(* Affichage de données *)
let print = print_int(div 22 5) ;;


(*Composition de fonction: fonction parametre et comme valeur*)
let direbonjour prenom nom  = print_string "Bonjour" ; print_string prenom ; print_string nom ;;

let direbonjourpignon prenom = direbonjour prenom "Pignon" ;;

let direbonjourGonzalez prenom= direbonjour prenom "CANARD";;

(* A compléter : let ajoute x position memoire ;;
 * let donne position memoire ;; @Colin *)

(* Liste d'entier *)
let l_int = [1;2;3;4;5];;

(* Liste de chaine de charactères *)
let l_cc = ["KK"; "Prout"; "Pipi"];;

(* Liste de floatant *)
let l_float = [14.1; 5.25; 6.66; 3.33];;

(*Composition d'affichage *)
let affiche_element print_function e = print_function e;;

let affiche_entier = affiche_element print_int;;

let affiche_string = affiche_element print_string;;

let affiche_float = affiche_element print_float;;

(* Parcourir une liste et l'afficher independament de son type *)
let rec affiche_liste afficheur l = match l with
  | premier::reste ->
    afficheur premier;
    affiche_liste afficheur reste
  | [] -> () ;; (* fin de liste *)

let affiche_liste_float = affiche_liste affiche_float;;

let affiche_liste_entier = affiche_liste affiche_entier;;

let affiche_liste_string = affiche_liste affiche_string;;

let affiche_liste_char = affiche_liste (affiche_element print_char);;


