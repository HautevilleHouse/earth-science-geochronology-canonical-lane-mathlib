import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeochronologyCanonicalLaneLean.UraniumLeadDating

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure ConcordiaDiagram where
  pb206U238Ratio : ℝ
  pb207U235Ratio : ℝ
  concordant : Prop

structure ConcordiaEvidence (C : ConcordiaDiagram) where
  pb206U238RatioClosed : C.pb206U238Ratio > 0
  pb207U235RatioClosed : C.pb207U235Ratio > 0
  concordantClosed : C.concordant

def ConcordiaClosed (C : ConcordiaDiagram) : Prop :=
  C.pb206U238Ratio > 0 ∧ C.pb207U235Ratio > 0 ∧ C.concordant

theorem concordia_closed_from_evidence (C : ConcordiaDiagram) (E : ConcordiaEvidence C) :
    ConcordiaClosed C := by
  exact And.intro E.pb206U238RatioClosed (And.intro E.pb207U235RatioClosed E.concordantClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse