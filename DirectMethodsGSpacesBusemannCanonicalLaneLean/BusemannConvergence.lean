import DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannFunctions

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannConvergencePackage {G : GSpaceStructure}
    (B : BusemannFunctionPackage G) where
  sequenceConverges : Prop
  limitFunctionBusemann : Prop
  uniformOnCompact : Prop
  sequenceConvergesClosed : sequenceConverges
  limitFunctionBusemannClosed : limitFunctionBusemann
  uniformOnCompactClosed : uniformOnCompact

structure BusemannConvergenceEvidence {G : GSpaceStructure}
    {B : BusemannFunctionPackage G} (C : BusemannConvergencePackage B) where
  sequenceConvergesClosed : C.sequenceConverges
  limitFunctionBusemannClosed : C.limitFunctionBusemann
  uniformOnCompactClosed : C.uniformOnCompact

def BusemannConvergenceClosed {G : GSpaceStructure}
    {B : BusemannFunctionPackage G} (C : BusemannConvergencePackage B) : Prop :=
  C.sequenceConverges ∧ C.limitFunctionBusemann ∧ C.uniformOnCompact

theorem busemann_convergence_closed_from_evidence {G : GSpaceStructure}
    {B : BusemannFunctionPackage G} (C : BusemannConvergencePackage B)
    (E : BusemannConvergenceEvidence C) : BusemannConvergenceClosed C := by
  exact And.intro E.sequenceConvergesClosed (And.intro E.limitFunctionBusemannClosed E.uniformOnCompactClosed)

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse