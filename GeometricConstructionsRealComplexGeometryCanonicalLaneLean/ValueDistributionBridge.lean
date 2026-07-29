import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure ValueDistributionPackage where
  meromorphicFunction : Type u
  domain : Type v
  targetSphere : Type w
  nevanlinnaCharacteristic : Prop
  deficiencyRelation : Prop
  valueCounting : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  meromorphicFunctionNonempty : Nonempty V.meromorphicFunction
  domainNonempty : Nonempty V.domain
  targetSphereNonempty : Nonempty V.targetSphere
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  deficiencyRelationClosed : V.deficiencyRelation
  valueCountingClosed : V.valueCounting

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  Nonempty V.meromorphicFunction ∧ Nonempty V.domain ∧ Nonempty V.targetSphere ∧
  V.nevanlinnaCharacteristic ∧ V.deficiencyRelation ∧ V.valueCounting

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.meromorphicFunctionNonempty
    (And.intro E.domainNonempty
      (And.intro E.targetSphereNonempty
        (And.intro E.nevanlinnaCharacteristicClosed
          (And.intro E.deficiencyRelationClosed E.valueCountingClosed))))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse
