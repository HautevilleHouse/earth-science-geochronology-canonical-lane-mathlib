import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure ConcordiaDiscordiaPackage where
  uPbData : Type u
  concordiaCurve : Type v
  discordiaLine : Type w
  upperInterceptAge : Prop
  lowerInterceptAge : Prop
  probabilityOfFit : Prop
  leadLossCorrection : Prop

structure ConcordiaDiscordiaEvidence (C : ConcordiaDiscordiaPackage) where
  upperInterceptAgeClosed : C.upperInterceptAge
  lowerInterceptAgeClosed : C.lowerInterceptAge
  probabilityOfFitClosed : C.probabilityOfFit
  leadLossCorrectionClosed : C.leadLossCorrection

def ConcordiaDiscordiaClosed (C : ConcordiaDiscordiaPackage) : Prop :=
  C.upperInterceptAge ∧ C.lowerInterceptAge ∧ C.probabilityOfFit ∧ C.leadLossCorrection

theorem concordia_discordia_closed_from_evidence (C : ConcordiaDiscordiaPackage) (E : ConcordiaDiscordiaEvidence C) :
    ConcordiaDiscordiaClosed C := by
  exact And.intro E.upperInterceptAgeClosed (And.intro E.lowerInterceptAgeClosed (And.intro E.probabilityOfFitClosed E.leadLossCorrectionClosed))

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse