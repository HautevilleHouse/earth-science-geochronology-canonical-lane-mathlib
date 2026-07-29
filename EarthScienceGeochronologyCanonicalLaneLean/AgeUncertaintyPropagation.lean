import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure AgeUncertaintyPropagation where
  age : ℝ
  ageUncertainty : ℝ
  confidenceLevel : ℝ

structure AgeUncertaintyEvidence (A : AgeUncertaintyPropagation) where
  ageClosed : A.age > 0
  ageUncertaintyClosed : A.ageUncertainty ≥ 0
  confidenceLevelClosed : 0 < A.confidenceLevel ∧ A.confidenceLevel < 1

def AgeUncertaintyClosed (A : AgeUncertaintyPropagation) : Prop :=
  A.age > 0 ∧ A.ageUncertainty ≥ 0 ∧ (0 < A.confidenceLevel ∧ A.confidenceLevel < 1)

theorem age_uncertainty_closed_from_evidence (A : AgeUncertaintyPropagation) (E : AgeUncertaintyEvidence A) :
    AgeUncertaintyClosed A := by
  exact And.intro A.ageClosed (And.intro A.ageUncertaintyClosed A.confidenceLevelClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse