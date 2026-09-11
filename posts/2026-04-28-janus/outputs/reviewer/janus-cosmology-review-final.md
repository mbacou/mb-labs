slug: janus-cosmology

date: 2026-04-30

review-type: final-reviewer-pass

scope
- Final reviewer pass after Full Verifier and caption extraction. Goals:
  - Confirm which strong claims in the draft are supported by page-level evidence.
  - Identify remaining unsupported or single-source critical claims.
  - Report on extracted figure/table captions and any quantitative fit evidence.

actions performed
- Ran Full Verifier: extracted per-page text from fetched PDFs to outputs/verifier/full/*.txt.
- Mapped claims to first-found PDF pages (outputs/verifier/full-claim-page-map.txt).
- Extracted figure/table captions and nearby context to outputs/verifier/captions.md.
- Searched per-page text for numeric/fit evidence relevant to rotation curves (outputs/verifier/search/*).

findings (final)
1) Runaway-instability / runaway suppression
- Evidence: Present in Petit's work. First matches: arXiv:1408.2451 p.1 and p.5–6 (claims that the bimetric formulation removes the "preposterous runaway effect"). See outputs/verifier/full-claim-page-map.txt and per-page extracts outputs/verifier/full/1408.2451-p1.txt, p5.txt.
- Verdict: Supported as an author claim with explicit text in the PDF.

2) Bimetric / bigravity structure
- Evidence: Present across multiple papers. First matches: arXiv:0712.0067 p.10 (bimetric, bigravity discussion), arXiv:1408.2451 pages include a Bimetric Newtonian approximation (p.5). Captions and section headings confirm this.
- Verdict: Supported as an explicit model ingredient in the primary sources.

3) Cosmic acceleration claim
- Evidence: Claimed in arXiv:0712.0067 ("About the cosmic acceleration", p.10) and referenced in arXiv:0805.1423 (p.22). The Full Verifier extracted these references.
- Verdict: Petit's papers assert that the bimetric/bigravity model can produce accelerated expansion qualitatively; quantitative confrontation with mainstream cosmological datasets is not present in the verified material.

4) Rotation curves / quantitative fits
- Evidence: Targeted search for rotation-curve numeric evidence (keywords: "km/s", "kpc", "v(r)", "chi2", "fit", "rotation curve") did not find rotation-curve fits in Petit's fetched arXiv PDFs. Matches found for numeric fits ("Best fit ... km/s") occurred primarily in arXiv:2208.14562 (Athena X-IFU instrument paper) and other unrelated works, not in Petit's JANUS/bigravity papers.
- Outputs: outputs/verifier/search/rotation-fit-matches.txt and rotation-summary.txt show no rotation-curve fit evidence in petit papers.
- Verdict: No quantitative rotation-curve fits located in the retrieved PDFs. The draft's claim that JANUS reproduces rotation curves remains an author claim requiring either (a) citation to a specific figure/table (if present elsewhere, e.g., author's website) or (b) reclassification as a qualitative claim pending reproduced fits.

5) Figure/table captions extracted
- Captions and surrounding context were extracted to outputs/verifier/captions.md. Notable items:
  - arXiv:0805.1423 contains many didactic/topological figures (Fig.1–Fig.17) illustrating twin-universe and time-arrow constructs (p.10–p.21).
  - arXiv:2103.12845 contains geometric figures related to Schwarzschild coordinate constructions (p.1–p.7).
  - arXiv:2206.00300 contains experimental/numerical figures with captions and explicit "FIG. 2/3/4/6/7" showing computed morphogenesis; captions include references to numerics and fits (but these are hydrodynamics/optics papers, not JANUS cosmology).
- Verdict: caption extraction succeeded; see outputs/verifier/captions.md for details.

open issues (remaining)
- Rotation‑curve quantitative evidence: none found in the scanned arXiv PDFs. If Petit published rotation‑curve fits on his website, viXra, or conference slides, those sources should be fetched and verified.
- Single-source dependence: most cosmological claims rest on Petit's preprints. Search for independent critiques, reproductions, or peer-reviewed follow-ups is recommended.
- Figures & equations: while section/page citations were added to the draft for core claims, the final draft should include explicit figure/table citations (arXiv ID, page, figure number) and short quotes where numerical claims are asserted.

edits applied to the draft
- Added review-status header and preliminary page-level citations for core claims (runaway, bimetric, cosmic acceleration) where Full Verifier found clear matches.
- Downgraded assertive wording to cautious phrasing where claims are single-source critical.

recommendation (final)
- Before publishing the literature review, complete one more pass to:
  1) Fetch Petit's website/viXra items and any conference slides and check for rotation-curve figures/tables.
  2) Add figure/table inline citations and short quoted captions (arXiv ID + page + figure/table) into outputs/janus-cosmology.md.
  3) Re-run the Reviewer to confirm all single-source critical claims are clearly labeled and all strong assertions have precise citations.

artifacts (key)
- Draft: outputs/janus-cosmology.md (updated)
- Final reviewer report: outputs/reviewer/janus-cosmology-review-final.md
- Full Verifier extracts: outputs/verifier/full/*.txt
- Claim->page map: outputs/verifier/full-claim-page-map.txt
- Captions extracted: outputs/verifier/captions.md
- Rotation search results: outputs/verifier/search/rotation-fit-matches.txt and rotation-summary.txt

status: READY_FOR_FINAL_EDITS — no fatal issues, major remaining item is locating any rotation-curve quantitative evidence or explicitly flagging that none is found in the retrieved sources.

If you want, I will now:
- Fetch Petit's website / viXra pages and search for rotation-curve fits; or
- Insert figure/table citations from outputs/verifier/captions.md into the draft where appropriate and run a final reviewer re-check. Which do you prefer?