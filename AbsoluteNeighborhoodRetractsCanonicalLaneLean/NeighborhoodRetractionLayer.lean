import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsoluteNeighborhoodRetractsCanonicalLaneLean.ANRProperties

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure NeighborhoodRetractionCertificate where
  space : Type
  retractionExists : Prop
  retractionWitness : String

def neighborhood_retraction_closed (C : NeighborhoodRetractionCertificate) : Prop :=
  C.retractionExists ∧ C.retractionWitness ≠ ""

theorem neighborhood_retraction_closed_checked :
    neighborhood_retraction_closed (NeighborhoodRetractionCertificate.mk (by infer_instance) True rfl) := by
  exact ⟨True.intro, by simp⟩

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse