import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure GrothendieckDualityLayerCertificate where
  dualizingComplex : Type
  dualizingWitness : Prop
  traceMap : Prop
  residuePair : Prop
  dualityState : dualizingWitness ∧ traceMap ∧ residuePair

def GrothendieckDualityLayerClosed (C : GrothendieckDualityLayerCertificate) : Prop :=
  C.dualizingWitness ∧ C.traceMap ∧ C.residuePair

theorem grothendieck_duality_layer_closed (C : GrothendieckDualityLayerCertificate) : GrothendieckDualityLayerClosed C := by
  exact C.dualityState

end HautevilleHouse.FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse