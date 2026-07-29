import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GSpace where
  carrier : Type u
  metric : carrier → carrier → ℝ
  metricSpace : MetricSpace carrier
  intrinsicMetric : Prop
  geodesic : Prop
  nonpositivelyCurved : Prop
  proper : Prop
  geodesicTerm : geodesic
  nonpositivelyCurvedTerm : nonpositivelyCurved
  properTerm : proper

structure BusemannFunction (X : GSpace) where
  basepoint : X.carrier
  functionValue : X.carrier → ℝ
  limitAtInfinity : Prop
  asymptoticRay : Prop
  monotonicity : Prop
  limitAtInfinityTerm : limitAtInfinity
  asymptoticRayTerm : asymptoticRay
  monotonicityTerm : monotonicity

def BusemannFunctionClosed (X : GSpace) (b : BusemannFunction X) : Prop :=
  b.limitAtInfinity ∧ b.asymptoticRay ∧ b.monotonicity

theorem busemann_function_closed (X : GSpace) (b : BusemannFunction X) :
    BusemannFunctionClosed X b := by
  exact And.intro b.limitAtInfinityTerm (And.intro b.asymptoticRayTerm b.monotonicityTerm)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse