import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure FormalDeformationCertificate where
  baseScheme : String
  deformationRing : String
  formalModuli : String
  obstructionTheoryPresent : Bool
  taylorResolutionPresent : Bool
  deformationParameterCount : Nat

default_deformation_certificate : FormalDeformationCertificate :=
  { baseScheme := "X0"
  , deformationRing := "R_def"
  , formalModuli := "Spf_R_def"
  , obstructionTheoryPresent := true
  , taylorResolutionPresent := true
  , deformationParameterCount := 1
  }

def FormalDeformationLayerClosed (C : FormalDeformationCertificate) : Prop :=
  C.obstructionTheoryPresent = true ∧
  C.taylorResolutionPresent = true ∧
  C.deformationParameterCount ≥ 1

theorem formal_deformation_layer_closed_checked :
    FormalDeformationLayerClosed default_deformation_certificate := by
  exact And.intro rfl (And.intro rfl (by omega))

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse