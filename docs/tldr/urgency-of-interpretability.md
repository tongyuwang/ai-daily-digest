# The Urgency of Interpretability
**Dario Amodei** · April 2025 · [Original](https://www.darioamodei.com/post/the-urgency-of-interpretability)

---

We don't understand how our own AI creations work. Dario Amodei's third major essay makes the case that this is essentially unprecedented in the history of technology — and that fixing it before AI systems become overwhelmingly powerful is one of the most important races humanity is currently running.

## The Problem

When a video game character says a line of dialogue, it's because a human programmed that exact line. When Claude summarizes a financial document, nobody — including Anthropic — knows precisely why it chooses certain words, why it's usually accurate but occasionally wrong, or what internal process led to any specific output. Modern AI systems are "grown more than they are built," as Amodei's co-founder Chris Olah puts it. The result: billions of numbers in vast matrices, somehow computing sophisticated cognitive tasks, with no one able to explain exactly how.

This opacity is the root cause of nearly every major AI concern. Worried about deception? We can't catch models "thinking" deceptive thoughts because we can't see their thoughts. Worried about bioweapon misuse? We can filter outputs, but we can't systematically block every possible jailbreak because we don't understand what the model actually knows. Worried about reliability in high-stakes applications? We can't set firm bounds on possible errors when we don't understand the mechanism producing answers.

Amodei makes a sharp observation about how opacity has distorted the entire AI safety debate. Theoretical arguments that AI might develop power-seeking behavior are "vague" enough that some people find them "thoroughly compelling and others laughably unconvincing." The polarization exists precisely because we can't look inside and check. Interpretability could settle arguments that have been running in circles for years.

## The Progress

The essay traces a decade of work, from early efforts identifying individual neurons in vision models (a "car detector" neuron that fires when it sees wheels below a car-shaped object) to Anthropic's recent breakthroughs with language models.

The key technical challenge was "superposition" — the discovery that models cram far more concepts than they have neurons by encoding them in overlapping combinations. It's as if the brain stored memories of your mother, the color blue, and the concept of justice all tangled together in the same neurons. This made interpretation seem nearly impossible until Anthropic (and others) found that a technique called sparse autoencoders could untangle the mess, revealing individual concepts like "literally or figuratively hedging" and "genres of music that express discontent." They found over 30 million such concepts in a medium-sized model, though billions likely exist.

The most recent breakthrough — "circuits" — goes beyond identifying individual concepts to mapping how they connect. When you ask "What is the capital of the state containing Dallas?", interpretability can now trace how a "Dallas" concept triggers "Texas" via a "located within" circuit, which then triggers "Austin" via a "capital" circuit. This is the beginning of actually watching an AI think.

## The Race

Here's where Amodei's urgency becomes palpable. He believes interpretability could become a reliable "MRI for AI" within 5-10 years on its current trajectory. But AI itself might reach "country of geniuses in a datacenter" capability by 2026 or 2027. The timelines might not line up.

He frames this as a race — not all-or-nothing, but every advance in interpretability before powerful AI arrives improves our odds. He calls on researchers to enter the field (noting that recent breakthroughs have opened many parallel research directions), asks governments to fund interpretability research, and pushes AI companies to integrate interpretability into their safety testing pipelines.

## The Aspiration

The long-term vision is striking: a comprehensive "brain scan" for AI models that could detect tendencies to lie, seek power, exploit jailbreaks, or harbor dangerous knowledge — used the way a doctor uses an MRI to diagnose, treat, and monitor. Anthropic has already run experiments where "red teams" deliberately introduce alignment flaws into models and "blue teams" use interpretability tools to find them. It works, but needs to scale enormously.

What makes this essay distinctive among Amodei's writing is its blend of genuine scientific excitement and barely contained anxiety. He can see a path to solving the problem. He's just not sure there's enough time to walk it. The most important lesson he's learned in a decade of AI work: "We can't stop the bus, but we can steer it." Interpretability is how we build the steering wheel.
