import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeochronologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeochronologyAdmittedObject where
  space : GeochronologySpace
  ageDetermination : Prop
  analyticalValid : Prop
  geologicalContext : Prop
  conclusion : ageDetermination ∧ analyticalValid ∧ geologicalContext

structure GeochronologyEndgameState where
  object : GeochronologyAdmittedObject

def GeochronologyWitnessClosed (O : GeochronologyAdmittedObject) : Prop :=
  O.ageDetermination ∧ O.analyticalValid ∧ O.geologicalContext

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse