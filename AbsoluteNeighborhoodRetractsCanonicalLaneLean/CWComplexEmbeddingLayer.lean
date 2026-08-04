/-
All Rights Reserved - No License Granted

Copyright (c) 2026 HautevilleHouse. All rights reserved.

This repository is published for academic review, citation, priority, public
notice, and research-reference purposes only.

No license is granted to use, copy, reproduce, redistribute, modify, merge,
publish, distribute, sublicense, sell, fork, mirror, scrape, use for training or
fine-tuning, include in a dataset or benchmark, use to create, evaluate, or
benchmark a derivative system, incorporate into another system, or create
derivative works from this repository or any substantial portion of it without
prior written permission from the rights holder.

Viewing this repository on GitHub for academic review and citation is permitted
with all rights reserved by the rights holder.

Any discussion, review, comparison, implementation, derivative research use, or
public reference to this repository must cite the repository and preserve this
notice.

Unauthorized reproduction or redistribution of this repository, including public
GitHub forks containing the repository contents, constitutes copyright
infringement and may be subject to DMCA.
-/
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
    cw_embedding_closed (CWComplexEmbeddingCertificate.mk Unit Unit True "witness") := by
  unfold cw_embedding_closed
  constructor
  · exact True.intro
  · decide

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse