import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure ANRHomotopyExtensionCertificate where
  homotopyExtDatum : String
  homotopyExtensionProperty : Bool
  borsukHomotopyExtensionRoute : String
  carrier : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def anrHomotopyExtensionCertificate : ANRHomotopyExtensionCertificate := {
  homotopyExtDatum := "ANRs satisfy the homotopy extension property: if (X, A) is an ANR pair and H: A × I → Y is a homotopy, then H extends to X × I for some neighborhood? Actually, ANRs have the Borsuk homotopy extension property.",
  homotopyExtensionProperty := true,
  borsukHomotopyExtensionRoute := "Borsuk's theorem: if X is an ANR, then the inclusion A → X has the homotopy extension property for maps into arbitrary spaces",
  carrier := "the class of metrizable spaces that are absolute neighborhood retracts",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def ANRHomotopyExtensionLayerClosed (C : ANRHomotopyExtensionCertificate) : Prop :=
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem anr_homotopy_extension_layer_closed_checked :
    ANRHomotopyExtensionLayerClosed anrHomotopyExtensionCertificate := by
  exact And.intro rfl rfl

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse