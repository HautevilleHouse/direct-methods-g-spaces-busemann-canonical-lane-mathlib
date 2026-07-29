import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GSpace where
  carrier : Type
  metric : carrier → carrier → ℝ
  hausdorff : Prop
  geodesic : Prop
  nonemptyBounded : Prop

structure BusemannFunction (X : GSpace) where
  basepoint : X.carrier
  toFun : X.carrier → ℝ
  asymptoticallyLinear : Prop
  limitExists : Prop

structure BusemannClassLimiting (X : GSpace) where
  function : BusemannFunction X
  rays : Set (X.carrier → ℝ)
  limitsUnique : Prop
  closureCondition : Prop

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse