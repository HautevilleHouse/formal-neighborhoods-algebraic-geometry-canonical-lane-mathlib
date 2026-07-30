import HautevilleHouse.FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean.FormalNeighborhoodBridge

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse.FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse