import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannFunctionPackage where
  rayFamily : Type
  limitFunction : Type
  existence : Prop
  convexity : Prop
  regularity : Prop

structure BusemannFunctionEvidence (B : BusemannFunctionPackage) where
  existenceClosed : B.existence
  convexityClosed : B.convexity
  regularityClosed : B.regularity

def BusemannFunctionClosed (B : BusemannFunctionPackage) : Prop :=
  B.existence ∧ B.convexity ∧ B.regularity

theorem busemann_function_closed_from_evidence (B : BusemannFunctionPackage)
    (E : BusemannFunctionEvidence B) : BusemannFunctionClosed B := by
  exact And.intro E.existenceClosed (And.intro E.convexityClosed E.regularityClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse