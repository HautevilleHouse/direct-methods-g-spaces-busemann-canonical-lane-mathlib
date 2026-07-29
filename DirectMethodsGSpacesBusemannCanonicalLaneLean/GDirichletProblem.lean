import DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannSpace
import Mathlib.Analysis.Convex.Basic

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure GSpace (X : BusemannSpace) where
  Γ : Type u
  group : Group Γ
  action : Γ → X.X → X.X
  isometric : Prop
  properDiscontinuous : Prop
  cocompact : Prop

def DirichletDomain {X : BusemannSpace} (G : GSpace X) (x : X.X) : Set X.X :=
  {y : X.X | ∀ g : G.Γ, g ≠ 1 → X.dist y (G.action g x) ≥ X.dist y x}

structure DirichletFundamentalDomain {X : BusemannSpace} (G : GSpace X) where
  center : X.X
  domain : Set X.X := DirichletDomain G center
  covers : ⋃ (g : G.Γ), G.action g '' domain = Set.univ
  disjointInterior : ∀ g : G.Γ, g ≠ 1 → (Set.interior domain) ∩ (Set.interior (G.action g '' domain)) = ∅

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse