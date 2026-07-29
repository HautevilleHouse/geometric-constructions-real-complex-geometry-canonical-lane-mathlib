import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure AnalyticContinuationPackage where
  sourceDomain : Type u
  targetDomain : Type v
  overlapNonempty : Prop
  firstFunctionHolomorphic : Prop
  secondFunctionHolomorphic : Prop
  functionsAgreeOnOverlap : Prop
  continuationUnique : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  overlapNonemptyClosed : A.overlapNonempty
  firstFunctionHolomorphicClosed : A.firstFunctionHolomorphic
  secondFunctionHolomorphicClosed : A.secondFunctionHolomorphic
  functionsAgreeOnOverlapClosed : A.functionsAgreeOnOverlap
  continuationUniqueClosed : A.continuationUnique

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.overlapNonempty ∧ A.firstFunctionHolomorphic ∧ A.secondFunctionHolomorphic ∧
  A.functionsAgreeOnOverlap ∧ A.continuationUnique

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.overlapNonemptyClosed
    (And.intro E.firstFunctionHolomorphicClosed
      (And.intro E.secondFunctionHolomorphicClosed
        (And.intro E.functionsAgreeOnOverlapClosed E.continuationUniqueClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse
