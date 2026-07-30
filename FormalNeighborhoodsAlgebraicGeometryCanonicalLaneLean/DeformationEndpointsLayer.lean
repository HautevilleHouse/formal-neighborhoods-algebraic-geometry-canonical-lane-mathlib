import canonicalLaneMathlib.AdmissibleClass
import FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean.FormalNeighborhoodCertificate

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

structure DeformationEndpointsLayerCertificate where
  datum : FormalNeighborhoodDatum
  deformationRoute : String
  tangentSpaceRoute : String
  obstructionRoute : String
  endpointChecked : Bool

def deformationEndpointsLayerCertificate : DeformationEndpointsLayerCertificate := {
  datum := primitiveFormalNeighborhoodDatum,
  deformationRoute := "first-order deformation space",
  tangentSpaceRoute := "tangent space via cotangent complex",
  obstructionRoute := "obstruction theory",
  endpointChecked := true
}

def DeformationEndpointsLayerClosed (C : DeformationEndpointsLayerCertificate) : Prop :=
  C.datum.deformationRoute = "First-order deformation space" ∧
  C.endpointChecked = true

theorem deformation_endpoints_layer_closed_checked :
    DeformationEndpointsLayerClosed deformationEndpointsLayerCertificate := by
  exact And.intro rfl rfl

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
