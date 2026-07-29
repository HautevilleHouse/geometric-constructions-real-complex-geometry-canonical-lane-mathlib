import canonicalLaneMathlib.AdmissibleClass
import GeometricConstructionsRealComplexGeometryCanonicalLaneLean.HolomorphicFunctionTheory

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure RiemannMappingPackage {H : HolomorphicFunctionPackage} where
  simplyConnectedDomain : Prop
  conformalEquivalenceToUnitDisk : Prop
  boundaryBehavior : Prop
  caratheodoryExtension : Prop
  simplyConnectedDomainTerm : simplyConnectedDomain
  conformalEquivalenceToUnitDiskTerm : conformalEquivalenceToUnitDisk
  boundaryBehaviorTerm : boundaryBehavior
  caratheodoryExtensionTerm : caratheodoryExtension

structure RiemannMappingEvidence {H : HolomorphicFunctionPackage} (R : RiemannMappingPackage H) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceToUnitDiskClosed : R.conformalEquivalenceToUnitDisk
  boundaryBehaviorClosed : R.boundaryBehavior
  caratheodoryExtensionClosed : R.caratheodoryExtension

def RiemannMappingClosed {H : HolomorphicFunctionPackage} (R : RiemannMappingPackage H) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalenceToUnitDisk ∧
  R.boundaryBehavior ∧ R.caratheodoryExtension

theorem riemannMapping_closed_from_evidence {H : HolomorphicFunctionPackage} (R : RiemannMappingPackage H) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalEquivalenceToUnitDiskClosed
      (And.intro E.boundaryBehaviorClosed E.caratheodoryExtensionClosed))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse