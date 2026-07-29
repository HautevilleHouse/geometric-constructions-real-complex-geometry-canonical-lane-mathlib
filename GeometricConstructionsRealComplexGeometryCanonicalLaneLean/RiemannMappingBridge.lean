import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Type u
  topology : TopologicalSpace domain
  simplyConnected : Prop
  conformalMapToUnitDisk : Prop
  boundaryBehavior : Prop
  uniqueness : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedClosed : R.simplyConnected
  conformalMapToUnitDiskClosed : R.conformalMapToUnitDisk
  boundaryBehaviorClosed : R.boundaryBehavior
  uniquenessClosed : R.uniqueness

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnected ∧ R.conformalMapToUnitDisk ∧ R.boundaryBehavior ∧ R.uniqueness

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.conformalMapToUnitDiskClosed
      (And.intro E.boundaryBehaviorClosed E.uniquenessClosed))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse
