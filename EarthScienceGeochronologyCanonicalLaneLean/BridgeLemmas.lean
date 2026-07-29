import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse
