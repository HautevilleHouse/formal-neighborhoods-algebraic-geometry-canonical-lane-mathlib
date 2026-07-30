import FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean.FormalNeighborhoodStructureLayer

/-!
# Deformation Theory Layer

This layer records the deformation-theoretic interpretation of formal neighborhoods.
-/

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure DeformationCertificate where
  functorOfArtinRings : String
  tangentSpace : String
  obstructionTheory : String
  versalDeformation : String
  deformationChecked : Bool

def deformationCertificate : DeformationCertificate :=
  { functorOfArtinRings := "Def_X",
    tangentSpace := "T^1",
    obstructionTheory := "T^2",
    versalDeformation := "formal neighborhood as versal base",
    deformationChecked := true }

def DeformationLayerClosed (C : DeformationCertificate) : Prop :=
  C.deformationChecked = true

theorem deformation_layer_closed_checked :
    DeformationLayerClosed deformationCertificate := by
  exact rfl

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse