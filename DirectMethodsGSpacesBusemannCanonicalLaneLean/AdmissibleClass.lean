import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure AdmissibleClass where
  object : BusemannAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := BusemannWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse