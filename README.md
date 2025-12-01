# HEATSCOPE Katalog – Pro-IRH Content System

Single source → multiple outputs: Slidev presentation + Typst PDF whitepaper.

## Project Structure

```
heatscope-katalog/
├── content/
│   ├── data.yaml           # Single source of truth (facts, figures, FAQs)
│   └── sections/           # Modular content blocks
│       ├── 01-intro.md
│       ├── 02-how-it-works.md
│       ├── 03-costs.md
│       ├── 04-comparison.md
│       ├── 05-references.md
│       └── 06-faq.md
├── slidev/
│   └── slides.md           # Presentation (uses slidev-3lectrify-theme)
├── typst/
│   ├── template.typ        # 3lectrify DIN A4 template
│   └── whitepaper.typ      # Whitepaper document
└── dist/                   # Built outputs (gitignored)
```

## Prerequisites

- Node.js 18+
- [Typst](https://typst.app/docs/guides/install/) (for PDF whitepaper)
- Lato font (for print typography)

## Commands

```bash
# Install dependencies
npm install

# Development
npm run slidev:dev      # Start Slidev dev server
npm run whitepaper:watch # Watch & compile Typst

# Build
npm run slidev:export   # Export presentation as PDF
npm run whitepaper:build # Compile whitepaper PDF
npm run build:all       # Build everything to dist/
```

## Content Architecture

### data.yaml
Central data file containing:
- Brand info (author, product, tagline)
- CTA (contact details)
- Key facts (investment, warranty, efficiency)
- Comparisons (vs. Fernwärme, vs. Wärmepumpe)
- Reference projects (Ehingen, Aschersleben, etc.)
- Scientific sources (Fraunhofer, TU Dresden, BfS)
- CO2 & electricity price forecasts
- Benefits list
- Full FAQ (from persona analysis)

### Section Files
Modular markdown content that can be imported into both formats:
- Slidev: One slide per section
- Typst: Flowing text with headings

## Design System

### Screen (Slidev)
- Dark background with light text
- Full CI color usage

### Print (Typst Whitepaper)
- Light background with dark text (ink-friendly)
- CI colors for accents only
- Professional DIN A4 layout

### Shared CI
- Typography: Lato (300, 400, 700)
- Colors: Deep blue #293645, Middle green #88C0B1, Orange #D04227
- Border radius: 20px (where applicable)

## Branding

- **Author:** 3lectrify (trusted advisor)
- **Product:** HEATSCOPE exclusively
- **CTA:** Visit 3lectrify Kompetenzzentrum, Sauerlach

## License

Proprietary – 3lectrify GmbH
