slug: janus-cosmology

date: 2026-04-30

scope: light verification pass — file-level + targeted textual checks for critical claims (runaway suppression, bimetric structure, rotation-curve / cosmic-acceleration claims).

method:
- Converted selected arXiv PDFs to text via pdftotext -layout (outputs/verifier/*.txt).
- Searched texts for keywords: "runaway", "negative mass", "bigravity", "bimetric", "rotation", "rotation curve", "accelerat".
- Collected short supporting snippets and file references.

summary-findings (light):

1) "Runaway" / instability claim
- Evidence: arXiv:1408.2451 (file: outputs/verifier/1408.2451.txt) explicitly states that the bimetric model "removes the preposterous runaway effect" and discusses the runaway problem (multiple occurrences; see lines referencing "runaway effect" and "The preposterous runaway phenomenon has disappeared.").
- Also discussed in arXiv:1809.05046 (outputs/verifier/1809.05046.txt) as historical objection and renewed approaches.
- Light verdict: Supported (the PDFs explicitly discuss the runaway problem and claim their formulation avoids it). Page/line snippets are in outputs/verifier/light-verification-summary.txt.

2) Bimetric / bigravity structure
- Evidence: arXiv:0712.0067 (outputs/verifier/0712.0067.txt), arXiv:0805.1423 (outputs/verifier/0805.1423.txt), and arXiv:1408.2451 all contain explicit references to a bimetric description / bigravity and derive Newtonian/bimetric approximations (see occurrences of "bimetric", "Bigravity", and section headings such as "Bimetric Newtonian approximation").
- Light verdict: Supported.

3) Negative-mass sector and interaction laws
- Evidence: Multiple files contain explicit descriptions and rules: arXiv:1408.2451 and arXiv:0712.0067 include statements like "Two negative masses attract each other" and that "positive and negative masses repel each other"; see outputs/verifier/* for snippets.
- Light verdict: Supported (in Petit's work the sign conventions and interaction laws are stated; the physical interpretation is author's proposal).

4) Rotation-curve claims (galaxy rotation curves without particle dark matter)
- Evidence: arXiv:1408.2451 and arXiv:0712.0067 discuss phenomenological implications and alternative explanations for VLS (Very Large Scale?) features; references indicate claims about rotation or halo-like effects, but I found no detailed data tables or extensive fits in the scanned PDFs (light search). Specific phrase "rotation curve" did not surface in the quick keyword pass; related discussion about lensing and negative convergence appears in 1408.2451.
- Light verdict: Partially supported (author claims phenomenology; quantitative fits not found in these PDFs in the light pass — require page-level inspection for any plots/data and separate reproduction).

5) Cosmic acceleration claim
- Evidence: arXiv:0712.0067 and arXiv:0805.1423 explicitly present the bimetric/bigravity model as an interpretation for cosmic acceleration; keywords and sections appear (see outputs/verifier/0712.0067.txt lines around "About the cosmic acceleration" and occurrences stating the model gives an "acceleration effect").
- Light verdict: Supported (author claims the model can produce accelerated expansion qualitatively).

URL / file checks
- All arXiv PDF URLs fetched and saved: outputs/raw/arxiv/*.pdf — confirmed present. The canonical arXiv abstract pages were also saved.
- Wikipedia page saved: outputs/raw/wikipedia-jean-pierre-petit.html — present.

Limitations of this light pass
- This pass is not exhaustive: I performed keyword scans and short-snippet extraction only. I did not map every draft claim to exact page/section citations.
- Line numbers in the extracted .txt files are not direct PDF page numbers; they reflect the text extraction output. For formal inline citations, extract per-page text or use pdfgrep to get exact PDF page numbers.

Next recommended verification steps (priority)
1. Full Verifier: extract PDF text by page (pdftotext per-page or use PyPDF2/pdfminer) and add exact inline citations (arXiv ID + page number + short quote) for every strong claim in the draft.
2. Quantitative checks: for rotation-curve and cosmological-fit claims, locate any figures, tables, or numerical fits in the PDFs and capture captions/values.
3. Check external sources: fetch Petit's author webpages, conference slides, and any viXra pages referenced by Wikipedia; these may contain additional JANUS expositions.

Artifacts produced (paths)
- Extracted text: outputs/verifier/0712.0067.txt, 0805.1423.txt, 1408.2451.txt, 1809.05046.txt
- Summary: outputs/verifier/light-verification-summary.txt
- Full light dump: outputs/verifier/light-verification.txt
- Draft (updated): outputs/janus-cosmology.md
- Provenance: outputs/janus-cosmology.provenance.md

If you want, I will now:
- Run the Full Verifier (add page-level inline citations) — estimated time: 5–20 minutes.
- Or run the Reviewer pass on the current draft (it will flag missing page-level citations as issues).