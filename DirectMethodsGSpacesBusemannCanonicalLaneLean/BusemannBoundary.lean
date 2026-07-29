import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannAsymptoticRays

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannBoundary (X : GSpace) where
  boundarySet : Set (BusemannFunction X)
  identification : Prop
  compactness : Prop
  sequentialCompact : Prop

structure BusemannBoundaryPackage (X : GSpace) where
  boundary : BusemannBoundary X
  boundaryNonempty : Prop
  sequentialCompactness : Prop
  boundaryClosed : Prop

structure BusemannBoundaryEvidence {X : GSpace} (B : BusemannBoundaryPackage X) where
  boundaryNonemptyClosed : B.boundaryNonempty
  sequentialCompactnessClosed : B.sequentialCompactness
  boundaryClosedClosed : B.boundaryClosed

def BusemannBoundaryClosed {X : GSpace} (B : BusemannBoundaryPackage X) : Prop :=
  B.boundaryNonempty ∧ B.sequentialCompactness ∧ B.boundaryClosed

theorem busemann_boundary_closed_from_evidence {X : GSpace} (B : BusemannBoundaryPackage X) (E : BusemannBoundaryEvidence B) :
    BusemannBoundaryClosed B := by
  exact And.intro E.boundaryNonemptyClosed (And.intro E.sequentialCompactnessClosed E.boundaryClosedClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse