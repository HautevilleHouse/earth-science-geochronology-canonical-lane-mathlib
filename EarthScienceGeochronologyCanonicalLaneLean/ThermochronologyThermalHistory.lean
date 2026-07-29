import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.RadiometricDatingSystem

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure ThermochronologyThermalHistory (R : RadiometricDatingSystem) where
  coolingRate : ℝ
  ageAtClosure : ℝ
  thermalEventTemperature : ℝ
  coolingRatePositive : coolingRate > 0
  ageAtClosurePositive : ageAtClosure > 0
  thermalEventTemperaturePositive : thermalEventTemperature > 0

structure ThermochronologyThermalHistoryEvidence {R : RadiometricDatingSystem}
    (T : ThermochronologyThermalHistory R) where
  coolingRateClosed : T.coolingRatePositive
  ageAtClosureClosed : T.ageAtClosurePositive
  thermalEventTemperatureClosed : T.thermalEventTemperaturePositive

def ThermochronologyThermalHistoryClosed {R : RadiometricDatingSystem}
    (T : ThermochronologyThermalHistory R) : Prop :=
  T.coolingRatePositive ∧ T.ageAtClosurePositive ∧ T.thermalEventTemperaturePositive

theorem thermochronology_thermal_history_closed_from_evidence {R : RadiometricDatingSystem}
    (T : ThermochronologyThermalHistory R) (E : ThermochronologyThermalHistoryEvidence T) :
    ThermochronologyThermalHistoryClosed T := by
  exact And.intro E.coolingRateClosed (And.intro E.ageAtClosureClosed E.thermalEventTemperatureClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse