import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.GeochronologyCorePhenomena

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure ThermalHistory where
  coolingRate : ℝ → ℝ
  closureTemperatureProfile : ℝ → ℝ
  ageVsTemperature : ℝ × ℝ
  diffusionModelSatisfied : Prop

structure ThermochronologyEvidence (T : ThermalHistory) where
  coolingRateClosed : T.coolingRate = λ t => 0
  closureTemperatureProfileClosed : T.closureTemperatureProfile = λ t => 0
  diffusionModelSatisfiedClosed : T.diffusionModelSatisfied

def ThermochronologyClosed (T : ThermalHistory) : Prop :=
  T.diffusionModelSatisfied ∧ T.coolingRate = λ t => 0 ∧ T.closureTemperatureProfile = λ t => 0

theorem thermochronology_closed_from_evidence (T : ThermalHistory) (E : ThermochronologyEvidence T) : ThermochronologyClosed T := by
  exact And.intro E.diffusionModelSatisfiedClosed (And.intro E.coolingRateClosed E.closureTemperatureProfileClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse