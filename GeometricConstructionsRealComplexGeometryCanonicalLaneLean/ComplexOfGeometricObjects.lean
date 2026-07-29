import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricConstructionsRealComplexGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComplexProjectiveSpace where
  complexDimension : Nat
  underlyingTopologicalSpace : Type u
  topology : TopologicalSpace underlyingTopologicalSpace
  complexStructure : Prop
  projectiveLineSubobject : Prop

def complexPlane : ComplexProjectiveSpace := {
  complexDimension := 1
  underlyingTopologicalSpace := ℂ ⊕ ℂ
  topology := inferInstance
  complexStructure := True
  projectiveLineSubobject := True
}

structure GeometricObjectPackage where
  complexProjectiveSpace : ComplexProjectiveSpace
  riemannSurface : Prop
  algebraicCurve : Prop
  realForm : Prop
  conformalStructure : Prop

def complexPlanePackage : GeometricObjectPackage := {
  complexProjectiveSpace := complexPlane
  riemannSurface := True
  algebraicCurve := True
  realForm := True
  conformalStructure := True
}

structure GeometricObjectEvidence (G : GeometricObjectPackage) where
  complexProjectiveSpaceClosed : G.complexProjectiveSpace.complexStructure
  riemannSurfaceClosed : G.riemannSurface
  algebraicCurveClosed : G.algebraicCurve
  realFormClosed : G.realForm
  conformalStructureClosed : G.conformalStructure

def GeometricObjectClosed (G : GeometricObjectPackage) : Prop :=
  G.complexProjectiveSpace.complexStructure ∧ G.riemannSurface ∧
  G.algebraicCurve ∧ G.realForm ∧ G.conformalStructure

theorem geometric_object_closed_from_evidence (G : GeometricObjectPackage) (E : GeometricObjectEvidence G) :
    GeometricObjectClosed G := by
  exact And.intro E.complexProjectiveSpaceClosed
    (And.intro E.riemannSurfaceClosed
      (And.intro E.algebraicCurveClosed
        (And.intro E.realFormClosed E.conformalStructureClosed)))

end GeometricConstructionsRealComplexGeometryCanonicalLaneLean
end HautevilleHouse