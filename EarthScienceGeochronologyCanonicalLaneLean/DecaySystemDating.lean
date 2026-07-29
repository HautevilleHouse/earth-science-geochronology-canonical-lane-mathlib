import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure DecaySystemPackage where
  parentIsotope : Type u
  daughterIsotope : Type v
  decayConstant : Type w
  parentConcentration : Type x
  daughterConcentration : Type y
  decayLaw : Prop
  initialRatioKnown : Prop
  closureTemperature : Prop
  analyticalPrecision : Prop

structure DecaySystemEvidence (D : DecaySystemPackage) where
  decayLawClosed : D.decayLaw
  initialRatioKnownClosed : D.initialRatioKnown
  closureTemperatureClosed : D.closureTemperature
  analyticalPrecisionClosed : D.analyticalPrecision

def DecaySystemClosed (D : DecaySystemPackage) : Prop :=
  D.decayLaw ∧ D.initialRatioKnown ∧ D.closureTemperature ∧ D.analyticalPrecision

theorem decay_system_closed_from_evidence (D : DecaySystemPackage) (E : DecaySystemEvidence D) :
    DecaySystemClosed D := by
  exact And.intro E.decayLawClosed (And.intro E.initialRatioKnownClosed (And.intro E.closureTemperatureClosed E.analyticalPrecisionClosed))

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse