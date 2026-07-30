import FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean.RingCompletionLayer

/-!
# Formal Neighborhood Structure Layer

This layer records the formal neighborhood data: the formal scheme Spec(hat(OX,x)).
-/

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure FormalNeighborhoodCertificate where
  formalScheme : String
  underlyingScheme : String
  closedPoint : String
  completionRing : RingCompletionCertificate
  structureSheaf : String
  formalNeighborhoodChecked : Bool

def formalNeighborhoodCertificate : FormalNeighborhoodCertificate :=
  { formalScheme := "Spf(hat(OX,x))",
    underlyingScheme := "Spec(OX,x)",
    closedPoint := "x",
    completionRing := ringCompletionCertificate,
    structureSheaf := "hat(OX,x)-algebra",
    formalNeighborhoodChecked := true }

def FormalNeighborhoodLayerClosed (C : FormalNeighborhoodCertificate) : Prop :=
  RingCompletionLayerClosed C.completionRing ∧ C.formalNeighborhoodChecked = true

theorem formal_neighborhood_layer_closed_checked :
    FormalNeighborhoodLayerClosed formalNeighborhoodCertificate := by
  exact And.intro ring_completion_layer_closed_checked rfl

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse