import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.DirectMethodsBridge
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

def ConstrainedGSpacesBusemannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gspaces_busemann_endgame (A : AdmissibleClass) :
    ConstrainedGSpacesBusemannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse