import canonicalLaneMathlib.AdmissibleClass
import DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannSpace

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BusemannWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse