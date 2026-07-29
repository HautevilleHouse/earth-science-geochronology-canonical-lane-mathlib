import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure UraniumLeadDatingPackage where
  uraniumIsotope : String
  leadIsotope : String
  numDecaySteps : ℕ
  totalDecayConstant : ℝ
  closedSystemAssumption : Prop
  concordiaDiagramValid : Prop
  discordiaLinesComputed : Prop
  ageInterpretationValid : Prop

structure UraniumLeadDatingEvidence (U : UraniumLeadDatingPackage) where
  closedSystemAssumptionClosed : U.closedSystemAssumption
  concordiaDiagramValidClosed : U.concordiaDiagramValid
  discordiaLinesComputedClosed : U.discordiaLinesComputed
  ageInterpretationValidClosed : U.ageInterpretationValid

def UraniumLeadDatingClosed (U : UraniumLeadDatingPackage) : Prop :=
  U.closedSystemAssumption ∧ U.concordiaDiagramValid ∧
  U.discordiaLinesComputed ∧ U.ageInterpretationValid

theorem uranium_lead_dating_closed_from_evidence (U : UraniumLeadDatingPackage) (E : UraniumLeadDatingEvidence U) :
    UraniumLeadDatingClosed U := by
  exact And.intro E.closedSystemAssumptionClosed
    (And.intro E.concordiaDiagramValidClosed
      (And.intro E.discordiaLinesComputedClosed E.ageInterpretationValidClosed))

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse