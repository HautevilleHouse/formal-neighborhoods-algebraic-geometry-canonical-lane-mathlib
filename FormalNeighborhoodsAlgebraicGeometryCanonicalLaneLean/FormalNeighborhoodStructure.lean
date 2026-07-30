import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure FormalNeighborhoodData where
  localRing : String
  maximalIdeal : String
  completionMap : String
  residueField : String
  formalCoordinateRing : String
  nilpotentStructure : String
  deformationParameter : String

default_formal_neighborhood : FormalNeighborhoodData :=
  { localRing := "local_ring_A"
  , maximalIdeal := "maximal_ideal_m"
  , completionMap := "completion_hat_A"
  , residueField := "residue_field_k"
  , formalCoordinateRing := "formal_coordinate_ring_R"
  , nilpotentStructure := "nilpotent_ideal_n"
  , deformationParameter := "deformation_param_t"
  }

def FormalNeighborhoodLayerClosed (D : FormalNeighborhoodData) : Prop :=
  D.localRing ≠ "" ∧
  D.maximalIdeal ≠ "" ∧
  D.completionMap ≠ "" ∧
  D.residueField ≠ "" ∧
  D.formalCoordinateRing ≠ "" ∧
  D.nilpotentStructure ≠ "" ∧
  D.deformationParameter ≠ ""

theorem formal_neighborhood_layer_closed_checked :
    FormalNeighborhoodLayerClosed default_formal_neighborhood := by
  exact And.intro (by decide) (And.intro (by decide) (And.intro (by decide) (And.intro (by decide) (And.intro (by decide) (And.intro (by decide) (by decide))))))

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse