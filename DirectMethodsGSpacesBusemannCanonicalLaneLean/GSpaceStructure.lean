import DirectMethodsGSpacesBusemannCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GSpaceStructure where
  Point : Type
  distance : Point → Point → ℝ
  metricSpace : MetricSpace Point
  geodesicSpace : GeodesicSpace Point
  properSpace : ProperSpace Point
  metricSpaceTerm : metricSpace
  geodesicSpaceTerm : geodesicSpace
  properSpaceTerm : properSpace

structure GSpaceEvidence (G : GSpaceStructure) where
  metricSpaceClosed : G.metricSpace
  geodesicSpaceClosed : G.geodesicSpace
  properSpaceClosed : G.properSpace

def GSpaceClosed (G : GSpaceStructure) : Prop :=
  G.metricSpace ∧ G.geodesicSpace ∧ G.properSpace

theorem gspace_closed_from_evidence (G : GSpaceStructure) (E : GSpaceEvidence G) : GSpaceClosed G := by
  exact And.intro E.metricSpaceClosed (And.intro E.geodesicSpaceClosed E.properSpaceClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse