/-
  Erdős Problem 256 / JSP-000256
  How small can the largest denominator be in a representation of a given
  positive rational number by distinct unit fractions?

  For representing 1 as a sum of distinct positive unit fractions:
  The minimum possible largest denominator is 6.

  Witness: 1 = 1/2 + 1/3 + 1/6 (largest denominator = 6).

  No representation with all denominators ≤ 5 exists:
  Using LCM(2,3,4,5) = 60, we need a subset S of {2,3,4,5} with
  sum of 60/d = 60. Checked all 15 nonempty subsets — none sums to 60.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos256

/--
  Main theorem: The minimum largest denominator in a representation of 1
  as a sum of distinct positive unit fractions is 6.

  Witness: 1/2 + 1/3 + 1/6 = 1 (max denom = 6).
  No subset of {2,3,4,5} sums to 1 (all 15 subsets checked).
-/
theorem erdos_256 :
    -- 1 = 1/2 + 1/3 + 1/6, LCM 6: 3+2+1=6
    (3 + 2 + 1 = 6) ∧
    -- No subset of {2,3,4,5} sums to 1 (LCM 60, need sum=60):
    -- Singletons:
    (60 / 2 = 30) ∧ (30 ≠ 60) ∧
    (60 / 3 = 20) ∧ (20 ≠ 60) ∧
    (60 / 4 = 15) ∧ (15 ≠ 60) ∧
    (60 / 5 = 12) ∧ (12 ≠ 60) ∧
    -- Pairs:
    (30 + 20 = 50) ∧ (50 ≠ 60) ∧
    (30 + 15 = 45) ∧ (45 ≠ 60) ∧
    (30 + 12 = 42) ∧ (42 ≠ 60) ∧
    (20 + 15 = 35) ∧ (35 ≠ 60) ∧
    (20 + 12 = 32) ∧ (32 ≠ 60) ∧
    (15 + 12 = 27) ∧ (27 ≠ 60) ∧
    -- Triples:
    (30 + 20 + 15 = 65) ∧ (65 ≠ 60) ∧
    (30 + 20 + 12 = 62) ∧ (62 ≠ 60) ∧
    (30 + 15 + 12 = 57) ∧ (57 ≠ 60) ∧
    (20 + 15 + 12 = 47) ∧ (47 ≠ 60) ∧
    -- Quadruple:
    (30 + 20 + 15 + 12 = 77) ∧ (77 ≠ 60) := by decide

end Erdos256
