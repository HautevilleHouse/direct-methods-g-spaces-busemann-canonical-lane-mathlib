import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannMetricSpace where
  carrier : Type u
  dist : carrier → carrier → ℝ
  posDef : ∀ x y, dist x y = 0 ↔ x = y
  symm : ∀ x y, dist x y = dist y x
  triangle : ∀ x y z, dist x z ≤ dist x y + dist y z
  complete : Prop
  metricClosed : complete

structure BusemannMetricSpaceEvidence (M : BusemannMetricSpace) where
  posDefClosed : M.posDef
  symmClosed : M.symm
  triangleClosed : M.triangle
  completeClosed : M.complete

def BusemannMetricSpaceClosed (M : BusemannMetricSpace) : Prop :=
  M.posDef ∧ M.symm ∧ M.triangle ∧ M.complete

theorem busemann_metric_space_closed_from_evidence (M : BusemannMetricSpace) (E : BusemannMetricSpaceEvidence M) : BusemannMetricSpaceClosed M := by
  exact And.intro E.posDefClosed (And.intro E.symmClosed (And.intro E.triangleClosed E.completeClosed))

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse
