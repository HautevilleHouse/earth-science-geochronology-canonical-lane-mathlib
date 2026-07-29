import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure IsochronRegressionPackage where
  sampleSet : Type u
  ratioData : Type v
  isochronLine : Type w
  slopeAge : Prop
  interceptInitialRatio : Prop
  mswdFit : Prop
  errorEllipse : Prop
  modelValidity : Prop

structure IsochronRegressionEvidence (I : IsochronRegressionPackage) where
  slopeAgeClosed : I.slopeAge
  interceptInitialRatioClosed : I.interceptInitialRatio
  mswdFitClosed : I.mswdFit
  errorEllipseClosed : I.errorEllipse
  modelValidityClosed : I.modelValidity

def IsochronRegressionClosed (I : IsochronRegressionPackage) : Prop :=
  I.slopeAge ∧ I.interceptInitialRatio ∧ I.mswdFit ∧ I.errorEllipse ∧ I.modelValidity

theorem isochron_regression_closed_from_evidence (I : IsochronRegressionPackage) (E : IsochronRegressionEvidence I) :
    IsochronRegressionClosed I := by
  exact And.intro E.slopeAgeClosed (And.intro E.interceptInitialRatioClosed (And.intro E.mswdFitClosed (And.intro E.errorEllipseClosed E.modelValidityClosed)))

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse