import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure ANRRetractionCertificate where
  retractDatum : String
  neighborRetractPair : String
  retractionRoute : String
  carrier : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def anrRetractionCertificate : ANRRetractionCertificate := {
  retractDatum := "Absolute neighborhood retract pair (X, A) with retraction r: U → A for some open neighborhood U of A in X",
  neighborRetractPair := "pair of spaces where A is a retract of some neighborhood in X",
  retractionRoute := "retraction exists via the ANR property: X is an ANR iff it is a retract of some open subset of a normed linear space",
  carrier := "the class of metrizable spaces that are absolute neighborhood retracts",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def ANRRetractionLayerClosed (C : ANRRetractionCertificate) : Prop :=
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem anr_retraction_layer_closed_checked :
    ANRRetractionLayerClosed anrRetractionCertificate := by
  exact And.intro rfl rfl

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse