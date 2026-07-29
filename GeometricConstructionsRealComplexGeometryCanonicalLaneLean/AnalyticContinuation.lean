import canonicalLaneMathlib.AdmissibleClass
import GeometricConstructionsRealComplexGeometryCanonicalLaneLean.HolomorphicFunctionTheory

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

structure AnalyticContinuationPackage {H : HolomorphicFunctionPackage} where
  germExistence : Prop
  monodromyTheorem : Prop
  sheafOfHolomorphicFunctions : Prop
  branchPoints : Prop
  naturalBoundary : Prop
  germExistenceTerm : germExistence
  monodromyTheoremTerm : monodromyTheorem
  sheafOfHolomorphicFunctionsTerm : sheafOfHolomorphicFunctions
  branchPointsTerm : branchPoints
  naturalBoundaryTerm : naturalBoundary

structure AnalyticContinuationEvidence {H : HolomorphicFunctionPackage} (A : AnalyticContinuationPackage H) where
  germExistenceClosed : A.germExistence
  monodromyTheoremClosed : A.monodromyTheorem
  sheafOfHolomorphicFunctionsClosed : A.sheafOfHolomorphicFunctions
  branchPointsClosed : A.branchPoints
  naturalBoundaryClosed : A.naturalBoundary

def AnalyticContinuationClosed {H : HolomorphicFunctionPackage} (A : AnalyticContinuationPackage H) : Prop :=
  A.germExistence ∧ A.monodromyTheorem ∧ A.sheafOfHolomorphicFunctions ∧
  A.branchPoints ∧ A.naturalBoundary

theorem analyticContinuation_closed_from_evidence {H : HolomorphicFunctionPackage} (A : AnalyticContinuationPackage H) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.germExistenceClosed
    (And.intro E.monodromyTheoremClosed
      (And.intro E.sheafOfHolomorphicFunctionsClosed
        (And.intro E.branchPointsClosed E.naturalBoundaryClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse