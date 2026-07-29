import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GAdmissibleClass where
  object : GAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GAdmissibleClass) : Prop :=
  GWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse