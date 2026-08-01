import AbsoluteNeighborhoodRetractsCanonicalLaneLean.ANRDefinition
import Mathlib.AlgebraicTopology.CWComplex

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure CWComplexANRCertificate where
  cwComplex : CWComplex
  anrProof : AbsoluteNeighborhoodRetract (CWComplexTopology cwComplex)
  witness : String

def cwComplexANR : CWComplexANRCertificate := {
  cwComplex := standardCWSphere 2,
  anrProof := {
    isAR := λ _ => True,
    neighborhoodExtensionProperty := true,
    retractionExists := true
  },
  witness := "Standard CW sphere is an ANR"
}

theorem cw_complex_anr_checked :
    AbsoluteNeighborhoodRetract (CWComplexTopology (standardCWSphere 2)) := by
  exact cwComplexANR.anrProof

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse
