%dw 2.0
fun calculerVentes(produit) = produit.quantite * produit.prix_unitaire

fun trouverMeilleurProduit(produits) =
    produits orderBy ((p) -> -calculerVentes(p)) map ((p) -> p.produit) [0]

fun calculerPourcentage(ventes_totales, ventes_produit) =
    if (ventes_totales == 0) 0 else (ventes_produit / ventes_totales) * 100
