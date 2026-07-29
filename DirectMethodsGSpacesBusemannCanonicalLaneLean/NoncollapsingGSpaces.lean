import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.DirectMethodsGSpacesBusemannCore

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure NoncollapsingCondition (X : GSpace) where
  injectivityRadiusLowerBound : ℝ → Prop
  volumeLowerBound : ℝ → ℝ → Prop
  curvatureBounded : Prop
  noncollapsingHolds : Prop

structure NoncollapsingPackage (X : GSpace) where
  condition : NoncollapsingCondition X
  scaleInvariant : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {X : GSpace} (N : NoncollapsingPackage X) where
  scaleInvariantClosed : N.scaleInvariant
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {X : GSpace} (N : NoncollapsingPackage X) : Prop :=
  N.scaleInvariant ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence {X : GSpace} (N : NoncollapsingPackage X) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantClosed E.blowupLimitNoncollapsedClosed

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse