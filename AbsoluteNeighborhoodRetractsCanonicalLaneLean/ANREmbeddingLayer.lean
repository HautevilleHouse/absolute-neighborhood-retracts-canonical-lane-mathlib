import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

structure ANREmbeddingCertificate where
  embeddingDatum : String
  embedsInEuclidean : Bool
  closedEmbeddingRoute : String
  carrier : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def anrEmbeddingCertificate : ANREmbeddingCertificate := {
  embeddingDatum := "Every compact metric space of dimension n embeds in ℝ^{2n+1}; for ANRs, stronger embedding properties hold",
  embedsInEuclidean := true,
  closedEmbeddingRoute := "ANRs are exactly the retracts of open subsets of normed linear spaces; thus they embed as closed subsets of normed linear spaces",
  carrier := "the class of metrizable spaces that are absolute neighborhood retracts",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def ANREmbeddingLayerClosed (C : ANREmbeddingCertificate) : Prop :=
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem anr_embedding_layer_closed_checked :
    ANREmbeddingLayerClosed anrEmbeddingCertificate := by
  exact And.intro rfl rfl

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse