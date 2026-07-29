import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.GeochronologyCorePhenomena
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.IsochronMethodPackage
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.ConcordiaDiscordia
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.ThermochronologyPackage

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure GeochronologyAdmissibleSystem where
  sample : GeochronologySample
  system : RadioisotopeSystem
  decaySeries : DecaySeries system
  isochronAnalysis : IsochronRegression
  concordiaAnalysis : ConcordiaSystem
  thermalHistory : ThermalHistory

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IsochronClosed (A.isochronAnalysis) ∧ ConcordiaClosed (A.concordiaAnalysis) ∧ ThermochronologyClosed (A.thermalHistory)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse