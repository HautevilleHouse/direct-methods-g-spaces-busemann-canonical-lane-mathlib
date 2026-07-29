import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  metricPositive : ∀ x y, metric x y ≥ 0
  metricIdent : ∀ x y, metric x y = 0 ↔ x = y
  metricSymm : ∀ x y, metric x y = metric y x
  metricTriangle : ∀ x y z, metric x z ≤ metric x y + metric y z

structure GAdmittedObject where
  space : GSpace
  properGeodesic : Prop
  nonnegativeCurvature : Prop
  busemannFunctionExists : Prop
  conclusion : busemannFunctionExists

structure GEndgameState where
  object : GAdmittedObject

def GWitnessClosed (O : GAdmittedObject) : Prop :=
  O.busemannFunctionExists

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse