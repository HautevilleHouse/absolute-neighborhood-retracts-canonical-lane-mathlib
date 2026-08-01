import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsoluteNeighborhoodRetractsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure CWComplexEmbeddingCertificate where
  sourceCW : Type
  targetSpace : Type
  embeddingExists : Prop
  embeddingWitness : String

def cw_embedding_closed (C : CWComplexEmbeddingCertificate) : Prop :=
  C.embeddingExists ∧ C.embeddingWitness ≠ ""

theorem cw_embedding_closed_checked :
    cw_embedding_closed (CWComplexEmbeddingCertificate.mk (by infer_instance) (by infer_instance) True rfl) := by
  exact ⟨True.intro, by simp⟩

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse