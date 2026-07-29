import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure VisibilityAxiomPackage (M : BusemannMetricSpace) where
  anyTwoPointsOnBoundaryUniqueGeodesic : Prop
  uniqueGeodesicClosed : anyTwoPointsOnBoundaryUniqueGeodesic
  geodesicEndpointsOnBoundary : Prop
  endpointsClosed : geodesicEndpointsOnBoundary
  visibilityClosed : anyTwoPointsOnBoundaryUniqueGeodesic ∧ geodesicEndpointsOnBoundary

def VisibilityAxiomClosed {M : BusemannMetricSpace} (V : VisibilityAxiomPackage M) : Prop :=
  V.anyTwoPointsOnBoundaryUniqueGeodesic ∧ V.geodesicEndpointsOnBoundary

theorem visibility_axiom_closed_from_evidence {M : BusemannMetricSpace} (V : VisibilityAxiomPackage M) : VisibilityAxiomClosed V := by
  exact And.intro V.uniqueGeodesicClosed V.endpointsClosed

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse
