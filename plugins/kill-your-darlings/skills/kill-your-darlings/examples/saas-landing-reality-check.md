# Example: a reality check in action

An illustrative run of the skill, showing the shape of a good output. The
outside-view findings here are written as examples; a real run produces them from
live search and marks each one verified or assumed.

---

**User:** Reality-check my SaaS landing page redesign. I added an animated 3D
hero that I love.

**Kill Your Darlings:**

**Goal:** more self-serve SMB trial signups this quarter, no extra engineering
budget. Everything below is judged against that.

**What the world says** (outside view):
- **Reception:** in landing-page teardowns, "slow hero" is a recurring complaint;
  users reward pages that get to the value fast. *(verified: Reddit r/SaaS + 3 CRO teardowns)*
- **Demand now:** interest in "page speed and conversion" is rising; "3D website"
  is flat to cooling. *(verified: search-trend check)*
- **Forecast:** Core Web Vitals stay a ranking and conversion lever this year.
  *(assumed: analyst commentary, not a hard source)*
- **Precedent:** heavy hero animations repeatedly lose A/B tests against a clear
  value prop. Most "wow" heroes die in the test, not the design review.
  *(verified: 4 CRO case studies)*

**What is working:**
- The headline value prop is sharp and specific.
- The pricing table is clear and honest.

**The kill list:**
- **Animated 3D hero | CUT.** It costs 2.1s of load on a mid-tier phone, on
  traffic that is 62% mobile, and pushes the CTA below the fold. No evidence it
  lifts signups; strong evidence it hurts speed and CTA visibility. *(verified: staging load test + your analytics)*
- **Motion in the hero | REWORK.** The wish for life on the page is real. Keep
  it as a lightweight CSS treatment that costs no load time.
- **3D as a paid-tier showcase | PARK.** It might earn a place deeper in the
  funnel. Decide it with one test: a 50/50 split where it must beat control on
  signups to ship.
- **Above-the-fold CTA | KEEP.** Load-bearing. Historically your strongest
  signup driver. Protect it.

**The lean core:** a fast, mostly-static page that leads with the value prop and
the CTA above the fold, with light CSS motion for warmth. The 3D idea lives or
dies by a single test.

**Get back on track:**
1. Pull the 3D hero; put value prop + CTA above the fold.
2. Add a lightweight CSS accent in place of the animation.
3. Queue the 50/50 test for the 3D idea; ship only if it beats control.

The maker loses the part they loved. The goal wins. That is the whole job.
