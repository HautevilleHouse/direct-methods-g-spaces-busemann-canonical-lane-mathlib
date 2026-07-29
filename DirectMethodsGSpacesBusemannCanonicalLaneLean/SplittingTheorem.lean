import DirectMethodsGSpacesBusemannCanonicalLaneLean.BusemannFunction

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannCanonicalLaneLean

structure SplittingTheoremInput (X : BusemannSpace) where
  hasLine : Prop
  line : ℤ → X.X
  isGeodesic : Prop
  busFunc : BusemannFunction X (line 0) (line 1) (λ n => line n) (by
    intro n; simp [isGeodesic])

structure SplittingConclusion (X : BusemannSpace) where
  splitsAsProduct : Prop
  factorY : BusemannSpace
  factorZ : BusemannSpace
  isometry : X.X ≃ (factorY.X × factorZ.X)
  busFuncIsProjection : Prop

end DirectMethodsGSpacesBusemannCanonicalLaneLean
end HautevilleHouse