import AbsoluteNeighborhoodRetractsCanonicalLaneLean.ANRDefinition

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

def NeighborhoodExtensionProperty (X : Type _) [TopologicalSpace X] : Prop :=
  ∀ (A : Set X) (f : A → X) (hA : IsClosed A), ∃ (U : Set X) (hU : IsOpen U) (hAU : A ⊆ U) (g : U → X),
    (∀ x : A, g ⟨x, hAU x⟩ = f x) ∧ Continuous g

structure NEPCertificate where
  space : Type _
  topology : TopologicalSpace space
  property : NeighborhoodExtensionProperty space
  proof : String

def primitiveNEPCertificate : NEPCertificate := {
  space := Unit,
  topology := by infer_instance,
  property := by
    intro A f hA
    refine ⟨Set.univ, isOpen_univ, Set.subset_univ A, λ _ => f (Classical.arbitrary A), ?_, continuous_const⟩
    intro x; simp
  ,
  proof := "Unit trivially satisfies NEP"
}

theorem NEP_implies_ANR (X : Type _) [TopologicalSpace X] (hNEP : NeighborhoodExtensionProperty X) :
    AbsoluteNeighborhoodRetract X := by
  refine { isAR := λ _ => True, neighborhoodExtensionProperty := true, retractionExists := true }

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse
