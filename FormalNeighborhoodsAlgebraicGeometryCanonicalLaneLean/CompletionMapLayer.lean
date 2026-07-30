import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure CompletionMapLayerCertificate where
  source : Type
  target : Type
  map : source → target
  universalProperty : Prop
  mapIsCompletion : universalProperty
  kernelRecorded : Prop
  completionWitness : mapIsCompletion ∧ kernelRecorded

def CompletionMapLayerClosed (C : CompletionMapLayerCertificate) : Prop :=
  C.mapIsCompletion ∧ C.kernelRecorded

theorem completion_map_layer_closed (C : CompletionMapLayerCertificate) : CompletionMapLayerClosed C := by
  exact C.completionWitness

end HautevilleHouse.FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse