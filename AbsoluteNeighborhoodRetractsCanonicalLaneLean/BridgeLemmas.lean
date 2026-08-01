import AbsoluteNeighborhoodRetractsCanonicalLaneLean.ANRDefinition

namespace HautevilleHouse
namespace AbsoluteNeighborhoodRetractsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.ANRPropertyChecked,
    A.object.neighborhoodExtensionPropertyChecked,
    A.object.retractionBridgeWitness,
    A.object.classicalRemainderCarried⟩

end AbsoluteNeighborhoodRetractsCanonicalLaneLean
end HautevilleHouse
