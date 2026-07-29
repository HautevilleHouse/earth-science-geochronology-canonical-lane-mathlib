import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeochronologyCanonicalLaneLean.BridgeLemmas
import EarthScienceGeochronologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

def ConstrainedGeochronologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geochronology_endgame (A : AdmissibleClass) :
    ConstrainedGeochronologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse
