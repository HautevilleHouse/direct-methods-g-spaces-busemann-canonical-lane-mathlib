import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure UltraLimitPackage where
  ultraFilter : Type
  limitSpace : Type
  limitMetric : Type
  limitIsGspace : Prop
  limitIsBusemannComplete : Prop

structure UltraLimitEvidence (U : UltraLimitPackage) where
  limitIsGspaceClosed : U.limitIsGspace
  limitIsBusemannCompleteClosed : U.limitIsBusemannComplete

def UltraLimitClosed (U : UltraLimitPackage) : Prop :=
  U.limitIsGspace ∧ U.limitIsBusemannComplete

theorem ultra_limit_closed_from_evidence (U : UltraLimitPackage)
    (E : UltraLimitEvidence U) : UltraLimitClosed U := by
  exact And.intro E.limitIsGspaceClosed E.limitIsBusemannCompleteClosed

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse