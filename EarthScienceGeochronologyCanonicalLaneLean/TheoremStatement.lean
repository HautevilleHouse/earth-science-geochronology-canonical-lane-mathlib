import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure GeochronologyAdmittedObject where
  sample : Type
  age : Type
  isochronAge : Prop
  decayConstant : Prop
  conclusion : isochronAge ∧ decayConstant

def GeochronologyWitnessClosed (O : GeochronologyAdmittedObject) : Prop :=
  O.isochronAge ∧ O.decayConstant

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse
