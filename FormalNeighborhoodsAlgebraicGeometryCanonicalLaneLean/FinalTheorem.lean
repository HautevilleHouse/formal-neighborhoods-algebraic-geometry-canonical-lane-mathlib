import canonicalLaneMathlib.AdmissibleClass
import FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean.CompletionBridgeLayer
import FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean.DeformationEndpointsLayer

namespace HautevilleHouse
namespace FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompletionBridgeLayerClosed completionBridgeLayerCertificate

def gateClosed (A : AdmissibleClass) : Prop :=
  DeformationEndpointsLayerClosed deformationEndpointsLayerCertificate

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact completion_bridge_layer_closed_checked

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact deformation_endpoints_layer_closed_checked

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormalNeighborhoodsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
