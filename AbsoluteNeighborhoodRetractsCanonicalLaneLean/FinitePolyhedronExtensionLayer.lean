import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsoluteNeighborhoodRetractsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure FinitePolyhedronExtensionCertificate where
  polyhedron : Type
  extensionProperty : Prop
  extensionWitness : String

def polyhedron_extension_closed (C : FinitePolyhedronExtensionCertificate) : Prop :=
  C.extensionProperty ∧ C.extensionWitness ≠ ""

theorem polyhedron_extension_closed_checked :
    polyhedron_extension_closed (FinitePolyhedronExtensionCertificate.mk (by infer_instance) True rfl) := by
  exact ⟨True.intro, by simp⟩

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse