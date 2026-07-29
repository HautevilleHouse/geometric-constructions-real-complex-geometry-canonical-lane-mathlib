import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure ValueDistributionPackage where
  meromorphicFunction : Type u
  nevanlinnaCharacteristic : Type v
  deficiencyRelation : Prop
  secondMainTheorem : Prop
  controlOfDeficiency : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  deficiencyRelationClosed : V.deficiencyRelation
  secondMainTheoremClosed : V.secondMainTheorem
  controlOfDeficiencyClosed : V.controlOfDeficiency

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop := V.deficiencyRelation ∧ V.secondMainTheorem ∧ V.controlOfDeficiency

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.deficiencyRelationClosed (And.intro E.secondMainTheoremClosed E.controlOfDeficiencyClosed)

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse