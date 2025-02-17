%dw 2.0

fun calculerVentes(produit) =
  produit.quantite * produit.prix_unitaire

fun sousTotal(scope) =
  (scope map ((item, index) -> calculerVentes(item))) reduce ((it, acc = 0) -> it + acc)

fun calculerPourcentage(ventes_totales, ventes_produit) =
  if (ventes_totales == 0)
    0
  else
    (ventes_produit / ventes_totales) * 100

