import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure DecayConstantCalibration where
  nuclide : String
  calibratedValue : ℝ
  uncertainty : ℝ

structure CalibrationEvidence (C : DecayConstantCalibration) where
  nuclideClosed : C.nuclide = "U238" ∨ C.nuclide = "U235" ∨ C.nuclide = "Rb87" ∨ C.nuclide = "K40"
  calibratedValueClosed : C.calibratedValue > 0
  uncertaintyClosed : C.uncertainty ≥ 0

def CalibrationClosed (C : DecayConstantCalibration) : Prop :=
  (C.nuclide = "U238" ∨ C.nuclide = "U235" ∨ C.nuclide = "Rb87" ∨ C.nuclide = "K40") ∧
  C.calibratedValue > 0 ∧ C.uncertainty ≥ 0

theorem calibration_closed_from_evidence (C : DecayConstantCalibration) (E : CalibrationEvidence C) :
    CalibrationClosed C := by
  exact And.intro E.nuclideClosed (And.intro E.calibratedValueClosed E.uncertaintyClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse