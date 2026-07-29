import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannClosureBridge

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse