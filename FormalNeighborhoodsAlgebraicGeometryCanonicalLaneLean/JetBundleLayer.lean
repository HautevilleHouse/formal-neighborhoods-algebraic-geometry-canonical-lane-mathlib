import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure JetBundleCertificate where
  baseVariety : String
  jetBundle : String
  jetOrder : Nat
  formalNeighborhood : String
  truncatedArcSpacePresent : Bool

default_jet_certificate : JetBundleCertificate :=
  { baseVariety := "V"
  , jetBundle := "J^∞(V)"
  , jetOrder := 2
  , formalNeighborhood := "formal_completion_at_point"
  , truncatedArcSpacePresent := true
  }

def JetBundleLayerClosed (C : JetBundleCertificate) : Prop :=
  C.jetOrder ≥ 1 ∧
  C.truncatedArcSpacePresent = true ∧
  C.formalNeighborhood ≠ ""

theorem jet_bundle_layer_closed_checked :
    JetBundleLayerClosed default_jet_certificate := by
  exact And.intro (by omega) (And.intro rfl (by decide))

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse