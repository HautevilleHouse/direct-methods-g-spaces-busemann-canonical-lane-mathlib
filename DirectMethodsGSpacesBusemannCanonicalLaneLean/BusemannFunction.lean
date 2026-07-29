import DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannSpace
import Mathlib.Analysis.NormedSpace.Basic

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

def BusemannFunction (X : BusemannSpace) (x : X.X) (ξ : X.X) (ray : ℕ → X.X) (hray : ∀ n, X.dist (ray n) x = n + 1) : X.X → ℝ :=
  λ y => liminf (λ n => X.dist y (ray n) - X.dist x (ray n)) atTop

structure BusemannFunctionProperties (X : BusemannSpace) (x : X.X) (ξ : X.X) (ray : ℕ → X.X) where
  hrayConverges : ray → ξ
  isLipschitz : Prop
  isConvex : Prop
  superharmonic : Prop

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse