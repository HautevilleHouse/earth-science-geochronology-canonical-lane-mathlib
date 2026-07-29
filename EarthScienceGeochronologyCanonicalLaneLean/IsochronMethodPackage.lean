import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.GeochronologyCorePhenomena

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure IsochronRegression where
  parentDaughterRatio : ℝ × ℝ
  initialRatio : ℝ
  slopeIsAge : Prop
  scatterIndication : Prop

structure IsochronEvidence (I : IsochronRegression) where
  initialRatioClosed : I.initialRatio
  slopeIsAgeClosed : I.slopeIsAge
  scatterIndicationClosed : I.scatterIndication

def IsochronClosed (I : IsochronRegression) : Prop :=
  I.initialRatio ∧ I.slopeIsAge ∧ I.scatterIndication

theorem isochron_closed_from_evidence (I : IsochronRegression) (E : IsochronEvidence I) : IsochronClosed I := by
  exact And.intro E.initialRatioClosed (And.intro E.slopeIsAgeClosed E.scatterIndicationClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse