import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure GeochronologyDatingPackage where
  decayConstants : Prop
  closureSystem : Prop
  interlaboratoryConsensus : Prop

structure GeochronologyDatingEvidence (D : GeochronologyDatingPackage) where
  decayConstantsClosed : D.decayConstants
  closureSystemClosed : D.closureSystem
  interlaboratoryConsensusClosed : D.interlaboratoryConsensus

def GeochronologyDatingClosed (D : GeochronologyDatingPackage) : Prop :=
  D.decayConstants ∧ D.closureSystem ∧ D.interlaboratoryConsensus

theorem geochronology_dating_closed_from_evidence
    (D : GeochronologyDatingPackage) (E : GeochronologyDatingEvidence D) :
    GeochronologyDatingClosed D := by
  exact And.intro E.decayConstantsClosed
    (And.intro E.closureSystemClosed E.interlaboratoryConsensusClosed)

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse
