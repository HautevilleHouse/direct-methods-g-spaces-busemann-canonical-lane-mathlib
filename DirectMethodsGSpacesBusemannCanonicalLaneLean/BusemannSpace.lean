import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure BusemannSpace where
  X : Type u
  dist : X → X → ℝ
  metricSpace : MetricSpace X
  geodesic : Prop
  proper : Prop
  nonempty : X

structure BusemannAdmittedObject where
  space : BusemannSpace
  basepoint : space.X
  boundaryPoint : space.X
  ray : ℕ → space.X
  rayConvergesToBoundary : Prop
  isBoundaryPoint : Prop
  conclusion : isBoundaryPoint

def BusemannWitnessClosed (O : BusemannAdmittedObject) : Prop :=
  O.isBoundaryPoint

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse