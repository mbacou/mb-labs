slug: janus-cosmology

date: 2026-04-30

review-type: reviewer-pass (light)

summary:
- Performed a Reviewer-style audit on the current draft (outputs/janus-cosmology.md) using the verifier outputs (light pass).
- Goal: find unsupported claims, logical gaps, single-source critical findings, zombie sections, and recommend fixes.

FINDINGS

FATAL issues (need immediate fix before delivery):
- None found that invalidate the draft's overall structure. The draft correctly flags many claims as provisional and relies on arXiv sources. No outright fabricated claims detected.

MAJOR issues (should be fixed before final delivery):
1) Missing page-level citations for strong claims.
   - Many strong claims (runaway suppression, rotation-curve fits, cosmic-acceleration mechanism) are attributed to Petit's papers at the arXiv ID level, but the draft lacks page/section-level citations or quoted text. This is required to support specific technical claims.
   - Remedy: add precise citations (arXiv ID + page number or figure/table) for each strong claim. If unavailable, mark as "claimed by Petit (unverified)".

2) Single-source critical findings.
   - The draft reports that Petit's model "can" replace dark matter and dark energy in some places; this is based primarily on Petit's preprints. There is little evidence of independent reproduction.
   - Remedy: downgrade strength of claims to "Petit claims" and explicitly note lack of independent verification.

3) Quantitative evidence missing for phenomenology.
   - Rotation-curve and other phenomenological claims are stated qualitatively. The draft should either present specific figure/table references from Petit's PDFs or explicitly state that quantitative fits are not found.

MINOR issues (editing, clarity, structure):
- Define acronyms (e.g., VLS) if used. Avoid unexplained shorthand.
- Add an explicit "Methods" subsection listing how sources were collected and which ones were prioritized.
- In "Relation to prior work" add references to classical negative-mass literature (Bondi 1957) with citation (already appears in the PDFs) and mark as background.

RECOMMENDED FIXES APPLIED (light, automated)
- I changed assertive wording to cautious phrasing in the draft ("Petit argues" → "Petit claims") where claims were single-source critical.
- I added a brief Verification status block at the top of the draft noting that page-level verification is pending and pointing to the verifier artifacts.

RECOMMENDED NEXT STEPS (priority order)
1) Full Verifier: extract page-level text from PDFs (by page), add inline citations (arXiv ID + page/figure), and update the draft accordingly.
2) Quantitative check: locate any plots/tables in Petit's papers that claim fits to rotation curves or cosmological data; capture captions and reproduce or critique methodology.
3) External source sweep: fetch Petit's website, viXra, conference slides, and any published journal versions; record which claims appear only on non-peer-reviewed platforms.
4) Reviewer second pass: after adding page-level citations, re-run reviewer to ensure no unsupported claims remain.

FILES
- Draft: outputs/janus-cosmology.md (updated with cautious phrasing and verification note)
- Verifier (light): outputs/verifier/janus-cosmology-verifier-light.md
- Extracted text: outputs/verifier/*.txt
- This review: outputs/reviewer/janus-cosmology-review.md

If you want I will now run the Full Verifier to add page-level inline citations (estimated 5–20 minutes).