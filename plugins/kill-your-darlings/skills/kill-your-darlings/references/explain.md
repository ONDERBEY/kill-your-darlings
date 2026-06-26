# Kill Your Darlings | Explain Mode

A reality check only works if the person can take it in. When the verdict is
hard, high-stakes, or needs buy-in from others, switch to explain mode: make it
simple and clear, in the chat or as an HTML page. Clarity is not decoration; a
clear cut is easier to accept than a clever one.

## When to explain (not just verdict)

- The user looks lost, overwhelmed, or defensive.
- The decision is big or needs sign-off from others.
- The user asks: "explain simply", "show me", "make it visual", "anlat", "basit
  anlat", "erkläre es einfach".
- There are several darlings and the shape of the whole is hard to hold in head.

If none of these apply, the normal structured verdict is enough. Do not
over-produce.

## Basic design principles (use these every time)

Simple, well-known principles. They apply to a chat message and an HTML page
alike.

1. **Hierarchy.** Most important first and biggest. Order: the goal, then the
   verdict, then the reasons, then the details.
2. **One idea per unit.** One darling per card or paragraph. Do not blend two
   decisions into one block.
3. **Semantic color, used sparingly.** Color carries meaning, not mood:
   KEEP = green, CUT = red, REWORK = amber, PARK = gray. Nothing else colored.
4. **Whitespace.** Give each idea room. Crowded text reads as panic.
5. **Proximity.** Group what belongs together (a verdict with its reason and its
   evidence tag).
6. **Plain language.** Short words, active voice, no jargon. If a sentence needs
   a second read, rewrite it.
7. **Progressive disclosure.** Lead with the headline verdict. Offer the detail
   underneath for whoever wants it.
8. **Show, do not just tell.** A number, a before/after, or one small visual
   beats an adjective. "Drops 80% of the words for 3% of the value" beats "too
   long".

## Inline explanation (in chat)

Keep it to a tight shape:

- **Goal:** one line.
- **What the world says:** one or two lines of outside-view insight (reception,
  demand, forecast, or precedent) that backs the call. This is the part that
  carries real research, not just your read of the files.
- **The call, in one sentence.** Plain. "Cut the 3D hero."
- **Why, in one or two lines.** Tied to the goal and one piece of evidence.
- **Before / after**, if it helps: what it looks like now vs after the cut.
- At most one metaphor. Metaphors clarify; they do not decide.

Match the user's language (EN / TR / DE). No em dashes.

## HTML explanation (a one-page report)

When a visual is warranted, generate a clean one-page HTML report from the
template at `assets/report-template.html`. It is the same content as the inline
verdict, laid out with the principles above.

How to produce it:

1. Copy `assets/report-template.html` and fill the marked regions: project name,
   the goal banner, what is working, the **What the world says** insight cards
   (reception, demand, forecast, precedent, each with a source tag), one verdict
   card per darling (set the right `kind` class so the color is correct), the
   lean core, and next steps. The insight cards stay neutral-colored on purpose,
   so the verdict colors keep their meaning.
2. Keep it **self-contained**: all CSS inline, no external fonts, scripts, or
   images. It must open from `file://` and also work pasted into a Claude
   artifact with no network.
3. Keep it **responsive**: it already uses relative units and a single column.
   Do not add fixed widths or anything that scrolls sideways on a phone.
4. Deliver it one of two ways:
   - Paste into a Claude **Artifact** for an in-chat preview, or
   - Save to `./.kill-your-darlings/audits/<slug>.html` and tell the user the
     path so they can open or share it.

## Localize the report

The template ships with English chrome labels, but the report must be in the
reader's language (the skill targets EN, TR, and DE). When you fill the template,
translate the fixed labels. Use this table; keep the verdict colors unchanged.

| EN | TR | DE |
|---|---|---|
| Reality check | Gerçeklik kontrolü | Realitätscheck |
| Goal | Hedef | Ziel |
| What the world says | Dünya ne diyor | Was die Welt sagt |
| Reception | Karşılanma | Resonanz |
| Demand now | Şu anki talep | Nachfrage jetzt |
| Forecast | Öngörü | Prognose |
| Precedent | Emsal | Präzedenzfall |
| What is working | İşleyen ne | Was funktioniert |
| The kill list | Kesim listesi | Die Streichliste |
| Keep | Tut | Behalten |
| Cut | Kes | Streichen |
| Rework | Yeniden kurgula | Überarbeiten |
| Park | Beklet | Zurückstellen |
| The lean core | Yalın çekirdek | Der schlanke Kern |
| Next moves | Sonraki adımlar | Nächste Schritte |
| verified | doğrulandı | verifiziert |
| assumed | varsayıldı | angenommen |

Also set `<html lang>` to match (`tr`, `de`, or `en`). The body content (goal,
findings, verdicts) is always written in the reader's language regardless.

## File generation rules

The skill can write the MD and HTML files a session needs. Keep them tidy:

- **Audit report (MD):** `./.kill-your-darlings/audits/<slug>-<date>.md`. The
  full written verdict (goal, working, kill list, lean core, next steps).
- **HTML report:** `./.kill-your-darlings/audits/<slug>-<date>.html` from the
  template.
- **Memory update:** append to `./.kill-your-darlings/MEMORY.md` (see `MEMORY.md`
  for format and locations).
- Never write into the plugin's own read-only directory. Slugs are kebab-case.
  Always tell the user the exact path of anything you wrote.
