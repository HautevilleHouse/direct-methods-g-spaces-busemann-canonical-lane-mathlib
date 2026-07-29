import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GStructure (M : BusemannMetricSpace) where
  geodesicSpace : Prop
  geodesicSpaceClosed : geodesicSpace
  nonpositiveCurvature : Prop
  npcClosed : nonpositiveCurvature
  visibilityAxiom : Prop
  visibilityClosed : visibilityAxiom
  gSpaceClosed : geodesicSpace ∧ nonpositiveCurvature ∧ visibilityAxiom

def GStructureClosed {M : BusemannMetricSpace} (G : GStructure M) : Prop :=
  G.geodesicSpace ∧ G.nonpositiveCurvature ∧ G.visibilityAxiom

theorem g_structure_closed_from_evidence {M : BusemannMetricSpace} (G : GStructure M) : GStructureClosed G := by
  exact And.intro G.geodesicSpaceClosed (And.intro G.npcClosed G.visibilityClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse
