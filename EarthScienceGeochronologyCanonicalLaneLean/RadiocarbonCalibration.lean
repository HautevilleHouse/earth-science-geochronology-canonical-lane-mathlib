import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure RadiocarbonCalibrationPackage where
  atmosphericProductionRate : ℝ
  decayConstantC14 : ℝ
  calibrationCurve : List (ℝ × ℝ)
  reservoirCorrection : ℝ
  delta13CCorrection : ℝ
  calibrationCurveValid : Prop
  calibrationCurveApplies : Prop
  ageRangesComputed : Prop

structure RadiocarbonCalibrationEvidence (R : RadiocarbonCalibrationPackage) where
  calibrationCurveValidClosed : R.calibrationCurveValid
  calibrationCurveAppliesClosed : R.calibrationCurveApplies
  ageRangesComputedClosed : R.ageRangesComputed

def RadiocarbonCalibrationClosed (R : RadiocarbonCalibrationPackage) : Prop :=
  R.calibrationCurveValid ∧ R.calibrationCurveApplies ∧ R.ageRangesComputed

theorem radiocarbon_calibration_closed_from_evidence (R : RadiocarbonCalibrationPackage) (E : RadiocarbonCalibrationEvidence R) :
    RadiocarbonCalibrationClosed R := by
  exact And.intro E.calibrationCurveValidClosed
    (And.intro E.calibrationCurveAppliesClosed E.ageRangesComputedClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse