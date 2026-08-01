import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsoluteNeighborhoodRetractsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure ANRProperty where
  homotopyExtension : Prop
  isRetractOfOpenNeighborhood : Prop

def anr_property_holds (A : AdmissibleANRObject) : Prop :=
  A.isANR ∧ A.anrCertificate ≠ ""

theorem anr_property_from_object (A : AdmissibleANRObject) (h : A.isANR) : anr_property_holds A :=
  ⟨h, by
    exact anrCertificate_ne_empty A⟩

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse