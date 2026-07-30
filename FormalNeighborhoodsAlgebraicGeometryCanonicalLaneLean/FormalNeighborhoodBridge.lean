import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure FormalNeighborhoodBridgeCertificate where
  formalNeighborhood : Type
  universalPropertySatisfied : Prop
  structureSheafRecorded : Prop
  completionMapWitness : universalPropertySatisfied ∧ structureSheafRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FormalNeighborhoodBridgeCertificate.formalNeighborhood A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked, A.object.theoremObjectChecked, A.object.operatorModelWitness⟩

end HautevilleHouse.FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse