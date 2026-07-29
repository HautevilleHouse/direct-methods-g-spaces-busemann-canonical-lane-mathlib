import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GeodesicLanguagePackage (M : BusemannMetricSpace) where
  geodesicSegment : M.carrier → M.carrier → Set (M.carrier)
  segmentIsGeodesic : Prop
  segmentClosed : segmentIsGeodesic
  geodesicRay : M.carrier → (ℝ → M.carrier)
  rayIsGeodesic : Prop
  rayClosed : rayIsGeodesic
  geodesicLine : (ℝ → M.carrier)
  lineIsGeodesic : Prop
  lineClosed : lineIsGeodesic

def GeodesicLanguageClosed {M : BusemannMetricSpace} (G : GeodesicLanguagePackage M) : Prop :=
  G.segmentIsGeodesic ∧ G.rayIsGeodesic ∧ G.lineIsGeodesic

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse
