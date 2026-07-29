import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure IsochronDatingPackage where
  parentDaughterRatio : ℝ
  initialDaughterRatio : ℝ
  measuredIsotopeRatios : List (ℝ × ℝ)
  linearRegressionValid : Prop
  isochronAge : ℝ
  agePositive : isochronAge > 0
  regressionSlopeCorrespondsToAge : Prop

structure IsochronDatingEvidence (I : IsochronDatingPackage) where
  linearRegressionValidClosed : I.linearRegressionValid
  regressionSlopeCorrespondsToAgeClosed : I.regressionSlopeCorrespondsToAge

def IsochronDatingClosed (I : IsochronDatingPackage) : Prop :=
  I.linearRegressionValid ∧ I.regressionSlopeCorrespondsToAge

theorem isochron_dating_closed_from_evidence (I : IsochronDatingPackage) (E : IsochronDatingEvidence I) :
    IsochronDatingClosed I := by
  exact And.intro E.linearRegressionValidClosed E.regressionSlopeCorrespondsToAgeClosed

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse