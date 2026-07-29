import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure RadiometricDatingSystem where
  parentIsotope : String
  daughterIsotope : String
  halfLife : ℝ
  decayConstant : ℝ
  closureTemperature : ℝ
  decayConstantPositive : decayConstant > 0
  closureTemperaturePositive : closureTemperature > 0

structure RadiometricDatingEvidence (R : RadiometricDatingSystem) where
  decayConstantClosed : R.decayConstantPositive
  closureTemperatureClosed : R.closureTemperaturePositive

def RadiometricDatingClosed (R : RadiometricDatingSystem) : Prop :=
  R.decayConstantPositive ∧ R.closureTemperaturePositive

theorem radiometric_dating_closed_from_evidence (R : RadiometricDatingSystem)
    (E : RadiometricDatingEvidence R) : RadiometricDatingClosed R := by
  exact And.intro E.decayConstantClosed E.closureTemperatureClosed

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse