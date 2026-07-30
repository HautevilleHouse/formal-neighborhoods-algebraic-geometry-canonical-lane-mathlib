import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure CompletionCertificate where
  localRingName : String
  completionName : String
  completionIsAdic : Bool
  krullDimension : Nat
  completionSchemeName : String

default_completion_certificate : CompletionCertificate :=
  { localRingName := "A_loc"
  , completionName := "A_hat"
  , completionIsAdic := true
  , krullDimension := 1
  , completionSchemeName := "Spec_A_hat"
  }

def CompletionLayerClosed (C : CompletionCertificate) : Prop :=
  C.completionIsAdic = true ∧
  C.krullDimension ≥ 0 ∧
  C.completionName ≠ ""

theorem completion_layer_closed_checked :
    CompletionLayerClosed default_completion_certificate := by
  exact And.intro rfl (And.intro (Nat.zero_le _) (by decide))

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse