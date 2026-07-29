import DirectMethodsGSpacesBusemannCanonicalLaneLean.GSpaceStructure

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannFunctionPackage {G : GSpaceStructure} where
  basepoint : G.Point
  ray : GeodesicRayPackage G
  limitDefined : Prop
  asymptoticLipschitz : Prop
  convexity : Prop
  limitDefinedClosed : limitDefined
  asymptoticLipschitzClosed : asymptoticLipschitz
  convexityClosed : convexity

structure BusemannFunctionEvidence {G : GSpaceStructure} (B : BusemannFunctionPackage G) where
  limitDefinedClosed : B.limitDefined
  asymptoticLipschitzClosed : B.asymptoticLipschitz
  convexityClosed : B.convexity

def BusemannFunctionClosed {G : GSpaceStructure} (B : BusemannFunctionPackage G) : Prop :=
  B.limitDefined ∧ B.asymptoticLipschitz ∧ B.convexity

theorem busemann_function_closed_from_evidence {G : GSpaceStructure}
    (B : BusemannFunctionPackage G) (E : BusemannFunctionEvidence B) : BusemannFunctionClosed B := by
  exact And.intro E.limitDefinedClosed (And.intro E.asymptoticLipschitzClosed E.convexityClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse