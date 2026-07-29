import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.DirectMethodsGSpacesBusemannCore

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure AsymptoticRay (X : GSpace) where
  origin : X.carrier
  direction : X.carrier → ℝ
  rayDefined : Prop
  unitSpeed : Prop
  asymptoticToBusemann : Prop

structure AsymptoticRayPackage (X : GSpace) where
  rays : Set (AsymptoticRay X)
  raysNonempty : Prop
  rayLimitUnique : Prop
  closureUnderLimits : Prop

structure AsymptoticRayEvidence {X : GSpace} (P : AsymptoticRayPackage X) where
  raysNonemptyClosed : P.raysNonempty
  rayLimitUniqueClosed : P.rayLimitUnique
  closureUnderLimitsClosed : P.closureUnderLimits

def AsymptoticRayClosed {X : GSpace} (P : AsymptoticRayPackage X) : Prop :=
  P.raysNonempty ∧ P.rayLimitUnique ∧ P.closureUnderLimits

theorem asymptotic_ray_closed_from_evidence {X : GSpace} (P : AsymptoticRayPackage X) (E : AsymptoticRayEvidence P) :
    AsymptoticRayClosed P := by
  exact And.intro E.raysNonemptyClosed (And.intro E.rayLimitUniqueClosed E.closureUnderLimitsClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse