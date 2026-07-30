import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure StructureSheafLayerCertificate where
  regularFunctions : Type
  stalks : Type
  sheafProperties : Prop
  carrierRecorded : Prop
  stalkComputationWitness : carrierRecorded ∧ sheafProperties

def StructureSheafLayerClosed (C : StructureSheafLayerCertificate) : Prop :=
  C.carrierRecorded ∧ C.sheafProperties

theorem structure_sheaf_layer_closed (C : StructureSheafLayerCertificate) : StructureSheafLayerClosed C := by
  exact C.stalkComputationWitness

end HautevilleHouse.FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse