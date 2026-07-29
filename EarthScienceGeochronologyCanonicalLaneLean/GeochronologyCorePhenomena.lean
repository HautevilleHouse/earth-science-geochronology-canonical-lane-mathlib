import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochronologyCanonicalLaneLean

structure RadioisotopeSystem where
  parentNuclide : String
  halfLife : ℝ
  decayConstant : ℝ
  daughterProduct : String
  closureTemperature : ℝ

data DatingTechnique
  | U_Pb_Zircon
  | Ar_Ar_Feldspar
  | Rb_Sr_Mica
  | Sm_Nd_Garnet
  | Lu_Hf_Apatite
  | Re_Os_Sulfide
  | U_Th_He_Apatite

structure GeochronologySample where
  sampleId : String
  locationCoordinates : ℝ × ℝ
  rockType : String
  mineralPhase : String
  grainSize : ℝ

structure DecaySeries (S : RadioisotopeSystem) where
  parentConcentration : ℝ → ℝ
  daughterConcentration : ℝ → ℝ
  timeDomain : Set ℝ
  initialConditions : Prop
  decayEquationsSatisfied : Prop

structure AgeInterpretation where
  calculatedAge : ℝ
  uncertainty : ℝ
  confidenceLevel : ℝ
  method : DatingTechnique
  systemUsed : RadioisotopeSystem

end EarthScienceGeochronologyCanonicalLaneLean
end HautevilleHouse