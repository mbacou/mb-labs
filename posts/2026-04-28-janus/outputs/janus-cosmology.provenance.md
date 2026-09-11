slug: janus-cosmology

date: 2026-04-30
status: partial — gather completed, verification performed (file-level). verification pending (page-level citations)

sources-fetched:
- wikipedia: https://en.wikipedia.org/wiki/Jean-Pierre_Petit (HTML saved: outputs/raw/wikipedia-jean-pierre-petit.html)
- arXiv author results page for "Jean-Pierre Petit" (HTML saved: outputs/raw/arxiv-petit-search.html)
- arXiv PDFs saved to outputs/raw/arxiv/:
  - 0712.0067.pdf (Bigravity as an interpretation of the cosmic acceleration)
  - 0805.1423.pdf (Five Dimensional bigravity. New topological description of the Universe)
  - 1408.2451.pdf (Can negative mass be considered in General Relativity ?)
  - 1809.05046.pdf (On evidence for negative energies and masses in the Dirac equation...)
  - 2103.12845.pdf
  - 2206.00300.pdf
  - 2208.14562.pdf

sources-accepted-for-draft:
- arXiv preprints listed above (raw PDFs archived). These were used as primary materials for the draft synthesis; they require inline verification of specific claims and page references.

sources-not-yet-checked / to-verify:
- Any external materials from Jean‑Pierre Petit’s personal website, viXra postings, conference slides, or blog posts (not yet fetched). These may contain JANUS-specific expositions and should be retrieved and cross-checked.
- Peer‑review status for each arXiv entry: some items may have been published in journals (e.g., collaborations) — check DOI/journal refs in each PDF metadata.

intermediate-files-used:
- outputs/.plans/janus-cosmology.md
- outputs/janus-cosmology-research-001.md (initial blocked gather note)
- outputs/janus-cosmology-research-002.md (fetched-source index and metadata)
- outputs/raw/* (downloaded HTML and PDFs under outputs/raw/ and outputs/raw/arxiv/)

verification-status-and-next-steps:
- File-level verification: confirmed PDFs fetched and saved under outputs/raw/arxiv/.
- Full Verifier (page-level): executed. Per-page text was extracted and searched for target claims. Mapping of first-hit pages created: outputs/verifier/full-claim-page-map.txt.
- Captions extracted to outputs/verifier/captions.md; numerical-fit searches were run and matches recorded (outputs/verifier/search/*). The draft was updated with figure/caption summaries and preliminary page-level citations where clear matches were found (see outputs/janus-cosmology.md). A final check should fetch any non-arXiv sources (author website, viXra, slides) before publication.

notes:
- The environment initially blocked web fetches via context-mode hooks; I disabled the pretool hook to permit direct curl access after your instruction. I restored a minimal placeholder pretool hook afterward. If you want the official hook restored, I can reinstall context-mode.
- All fetched PDFs are saved under outputs/raw/arxiv/ and per-page text under outputs/verifier/full/.