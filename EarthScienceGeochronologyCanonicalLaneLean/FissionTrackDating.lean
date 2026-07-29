import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure FissionTrackDatingPackage where
  uraniumConcentration : ℝ
  spontaneousTrackDensity : ℝ
  inducedTrackDensity : ℝ
  neutronFluence : ℝ
  decayConstant238U : ℝ
  etchingEfficiency : ℝ
  trackCountingValid : Prop
  ageEquationValid : Prop
  agePositive : age > 0 where
    age : ℝ

structure FissionTrackDatingEvidence (F : FissionTrackDatingPackage) where
  trackCountingValidClosed : F.trackCountingValid
  ageEquationValidClosed : F.ageEquationValid

def FissionTrackDatingClosed (F : FissionTrackDatingPackage) : Prop :=
  F.trackCountingValid ∧ F.ageEquationValid

theorem fission_track_dating_closed_from_evidence (F : FissionTrackDatingPackage) (E : FissionTrackDatingEvidence F) :
    FissionTrackDatingClosed F := by
  exact And.intro E.trackCountingValidClosed E.ageEquationValidClosed

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse