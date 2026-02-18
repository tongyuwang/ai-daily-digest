# The Bitter Lesson
**Rich Sutton** · March 2019 · [Original](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)

---

This is the most important idea in AI, compressed into roughly 1,300 words on a plain HTML page with no images. Rich Sutton — one of the founding fathers of reinforcement learning — wrote it in 2019, but it describes a pattern that has held for 70 years and shows no signs of breaking.

## The Lesson

General methods that leverage computation always beat methods that leverage human knowledge. Always. Given enough time and enough compute, brute force wins — and the victory is total.

That's it. That's the lesson. It's "bitter" because researchers keep learning it the hard way, in domain after domain, decade after decade, and it never stops stinging.

## The Pattern

Sutton walks through the history:

**Chess.** Researchers spent years encoding human chess knowledge — opening theory, positional understanding, endgame heuristics. Then Deep Blue beat Kasparov in 1997 using massive brute-force search. The knowledge-based researchers "were not good losers."

**Go.** The same story, delayed 20 years. Enormous effort went into encoding human Go intuition. Then AlphaGo (and later AlphaZero) won using search and self-play learning, rendering all that human-knowledge engineering irrelevant.

**Speech recognition.** In the 1970s, systems built on human understanding of phonemes and vocal tracts competed against statistical methods. Statistics won. Then deep learning won even harder, using *less* human knowledge and *more* computation.

**Computer vision.** Early methods were built around how humans think vision works — edges, shapes, features hand-designed by experts. Today, neural networks using only generic convolutions and lots of data vastly outperform all of it.

## Why It's Bitter

The bitterness comes from a deeply human impulse: researchers want to build systems that work the way they believe their own minds work. It's intellectually satisfying to encode your understanding of a domain into a system. It feels like *real* science — you're using insight, expertise, theory.

But it doesn't scale. Human knowledge helps in the short term, then plateaus and actively inhibits progress by making systems too complex to benefit from increases in computation. Meanwhile, the simple, general methods — search and learning — keep getting better as compute grows, because compute never stops growing.

## The Two Takeaways

First: **bet on general methods that scale with computation.** Search and learning are the two approaches that scale arbitrarily. Everything else hits a ceiling.

Second: **stop trying to build in the contents of minds.** The world is "tremendously, irredeemably complex." We should build meta-methods that *discover* complexity, not methods that *contain* our discoveries. "We want AI agents that can discover like we can, not which contain what we have discovered."

## Why It Still Matters

The Bitter Lesson is the intellectual foundation beneath everything that followed — scaling laws, the bet on large language models, the Transformer's success, the decision to pour trillions into compute clusters. When Aschenbrenner counts OOMs of compute and predicts AGI, he's extrapolating the Bitter Lesson. When Anthropic and OpenAI train ever-larger models on ever-more data rather than engineering in human knowledge, they're following the Bitter Lesson.

It's also the most uncomfortable idea in AI for anyone who values human expertise. The implication is stark: your domain knowledge, your carefully engineered features, your clever architecture choices — they're all temporary advantages that compute will eventually steamroll. The only question is when.

Seven years after Sutton wrote it, the lesson remains unlearned by many and continues to play out exactly as described. It's short enough to read in five minutes and important enough to revisit once a year.
