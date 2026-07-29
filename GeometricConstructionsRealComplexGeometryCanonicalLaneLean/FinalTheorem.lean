import canonicalLaneMathlib.AdmissibleClass
import ComplexAnalysisBridge

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

def ConstrainedGeometricConstructionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_constructions_endgame (A : AdmissibleClass) :
    ConstrainedGeometricConstructionsClosure A := by
  have hbridge : bridgeClosed A := by
    -- bridge from admissible class: using the object's conclusion
    exact A.object.conclusion
  have hgate : gateClosed A := by
    -- gate from admissible class: using the gateWitness
    exact A.gateWitness
  exact And.intro hbridge hgate

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse