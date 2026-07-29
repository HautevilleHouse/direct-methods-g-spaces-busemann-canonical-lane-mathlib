import DirectMethodsGSpacesBusemannCanonicalLaneLean.GSpaceStructure

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GeodesicRayPackage {G : GSpaceStructure} where
  startPoint : G.Point
  direction : G.Point → ℝ
  isRay : Prop
  asymptoticDirection : Prop
  isRayClosed : isRay
  asymptoticDirectionClosed : asymptoticDirection

structure GeodesicRayEvidence {G : GSpaceStructure} (R : GeodesicRayPackage G) where
  isRayClosed : R.isRay
  asymptoticDirectionClosed : R.asymptoticDirection

def GeodesicRayClosed {G : GSpaceStructure} (R : GeodesicRayPackage G) : Prop :=
  R.isRay ∧ R.asymptoticDirection

theorem geodesic_ray_closed_from_evidence {G : GSpaceStructure}
    (R : GeodesicRayPackage G) (E : GeodesicRayEvidence R) : GeodesicRayClosed R := by
  exact And.intro E.isRayClosed E.asymptoticDirectionClosed

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse