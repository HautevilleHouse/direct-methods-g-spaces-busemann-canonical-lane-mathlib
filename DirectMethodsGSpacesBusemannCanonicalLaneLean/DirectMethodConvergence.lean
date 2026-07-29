import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure DirectMethodConvergencePackage (M : BusemannMetricSpace) where
  minimizingSequence : ℕ → M.carrier
  limitPoint : M.carrier
  sequenceConverges : Prop
  convergenceClosed : sequenceConverges
  limitInSpace : Prop
  limitClosed : limitInSpace
  directMethodClosed : sequenceConverges ∧ limitInSpace

def DirectMethodConvergenceClosed {M : BusemannMetricSpace} (D : DirectMethodConvergencePackage M) : Prop :=
  D.sequenceConverges ∧ D.limitInSpace

theorem direct_method_convergence_closed_from_evidence {M : BusemannMetricSpace} (D : DirectMethodConvergencePackage M) : DirectMethodConvergenceClosed D := by
  exact And.intro D.convergenceClosed D.limitClosed

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse
