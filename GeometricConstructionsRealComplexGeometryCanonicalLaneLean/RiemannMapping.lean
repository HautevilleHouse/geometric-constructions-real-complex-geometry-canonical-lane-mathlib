import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Type u
  conformalMap : Type v
  biholomorphism : Prop
  existence : Prop
  uniqueness : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  existenceClosed : R.existence
  uniquenessClosed : R.uniqueness

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop := R.existence ∧ R.uniqueness

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse