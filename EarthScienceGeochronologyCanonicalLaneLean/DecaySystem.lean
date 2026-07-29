import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure DecaySystem where
  parentIsotope : String
  daughterIsotope : String
  halfLife : ℝ
  decayConstant : ℝ
  decayEquationValid : Prop
  halfLifePositive : halfLife > 0
  decayConstantFromHalfLife : decayConstant = Real.log 2 / halfLife

structure DecaySystemEvidence (D : DecaySystem) where
  decayEquationValidClosed : D.decayEquationValid
  decayConstantFromHalfLifeClosed : D.decayConstantFromHalfLife

def DecaySystemClosed (D : DecaySystem) : Prop :=
  D.decayEquationValid ∧ D.decayConstantFromHalfLife

theorem decay_system_closed_from_evidence (D : DecaySystem) (E : DecaySystemEvidence D) :
    DecaySystemClosed D := by
  exact And.intro E.decayEquationValidClosed E.decayConstantFromHalfLifeClosed

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse