import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannFlatnessPackage where
  flatSpaces : Type
  busemannFlatnessCondition : Prop
  classification : Prop
  rigidity : Prop

structure BusemannFlatnessEvidence (B : BusemannFlatnessPackage) where
  busemannFlatnessConditionClosed : B.busemannFlatnessCondition
  classificationClosed : B.classification
  rigidityClosed : B.rigidity

def BusemannFlatnessClosed (B : BusemannFlatnessPackage) : Prop :=
  B.busemannFlatnessCondition ∧ B.classification ∧ B.rigidity

theorem busemann_flatness_closed_from_evidence (B : BusemannFlatnessPackage)
    (E : BusemannFlatnessEvidence B) : BusemannFlatnessClosed B := by
  exact And.intro E.busemannFlatnessConditionClosed
    (And.intro E.classificationClosed E.rigidityClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse