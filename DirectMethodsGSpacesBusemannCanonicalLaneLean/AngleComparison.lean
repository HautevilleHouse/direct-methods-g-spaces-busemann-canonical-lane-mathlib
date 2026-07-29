import DirectMethodsGSpacesBusemannCanonicalLaneLean.GSpaceStructure

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure AngleComparisonPackage {G : GSpaceStructure} where
  triangleInequalityAngle : Prop
  comparisonWithEuclidean : Prop
  angleMonotonicity : Prop
  triangleInequalityAngleClosed : triangleInequalityAngle
  comparisonWithEuclideanClosed : comparisonWithEuclidean
  angleMonotonicityClosed : angleMonotonicity

structure AngleComparisonEvidence {G : GSpaceStructure} (A : AngleComparisonPackage G) where
  triangleInequalityAngleClosed : A.triangleInequalityAngle
  comparisonWithEuclideanClosed : A.comparisonWithEuclidean
  angleMonotonicityClosed : A.angleMonotonicity

def AngleComparisonClosed {G : GSpaceStructure} (A : AngleComparisonPackage G) : Prop :=
  A.triangleInequalityAngle ∧ A.comparisonWithEuclidean ∧ A.angleMonotonicity

theorem angle_comparison_closed_from_evidence {G : GSpaceStructure}
    (A : AngleComparisonPackage G) (E : AngleComparisonEvidence A) : AngleComparisonClosed A := by
  exact And.intro E.triangleInequalityAngleClosed (And.intro E.comparisonWithEuclideanClosed E.angleMonotonicityClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse