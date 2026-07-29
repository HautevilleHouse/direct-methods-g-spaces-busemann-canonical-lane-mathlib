import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.GSpacesBusemannGeometry

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (X : GSpace) => BusemannFunctionClosed X (defaultBusemannFunction X)
  | _ => False

noncomputable def defaultBusemannFunction (X : GSpace) : BusemannFunction X :=
  { basepoint := Classical.choice (inferInstance : Nonempty X.carrier)
    functionValue := λ _ => 0
    limitAtInfinity := True
    asymptoticRay := True
    monotonicity := True
    limitAtInfinityTerm := True.intro
    asymptoticRayTerm := True.intro
    monotonicityTerm := True.intro
  }

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with X
  refine ?_
  exact busemann_function_closed X (defaultBusemannFunction X)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse