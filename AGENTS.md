# AGENTS.md

## Project purpose

This repository contains Quarto- and R-based teaching material for Bayesian Linear Regression. It may include theoretical notes, lecture slides, tutorials, practical R examples, simulations, images, rendered documents, and narration or teaching support material.

The goal is to maintain clear, reproducible, mathematically consistent teaching material on Bayesian Linear Regression, with emphasis on statistical modelling, prior distributions, posterior inference, Gibbs sampling, convergence diagnostics, and applications in genetics/genomics when relevant.

## Repository type

This is primarily a teaching and course-material repository, not a production software package.

Typical content may include:

-   Quarto notes

-   Quarto slides

-   tutorials and exercises

-   R scripts

-   simulation examples

-   figures and images

-   rendered HTML/PDF outputs

-   narration or speaker-note material

## General rules

-   Work only inside this repository.

-   Do not commit changes unless explicitly asked.

-   Check `git status --short` before editing.

-   If the working tree is already dirty, identify existing changes before editing.

-   Do not overwrite unrelated user changes.

-   Prefer small, reviewable edits.

-   Show the diff after edits.

-   Do not delete files unless explicitly asked.

-   Ask before running commands that render many files, rebuild the website, modify generated outputs, or run long simulations.

## Quarto rules

-   Preserve valid Quarto and Markdown syntax.

-   Do not break YAML front matter.

-   Preserve code chunks unless explicitly asked to modify them.

-   Preserve heading structure unless the task asks for reorganization.

-   Preserve equation labels, cross-references, citations, figure references, and chunk labels.

-   Keep `editor: source` if it is already present.

-   Avoid changes that would prevent notes, slides, tutorials, or rendered documents from building.

-   Do not wrap complete `.qmd` documents inside code fences.

## Bayesian Linear Regression rules

When editing technical content:

-   Keep notation consistent across notes, slides, and tutorials.

-   Define all symbols before using them.

-   Distinguish data, parameters, hyperparameters, priors, likelihoods, posteriors, and full conditional distributions.

-   Distinguish Bayesian Linear Regression from ordinary least squares and linear mixed models.

-   Distinguish posterior means, posterior modes, posterior samples, and point estimates.

-   Distinguish prior assumptions from empirical results.

-   Do not change mathematical meaning for stylistic reasons.

-   Do not introduce new priors, likelihoods, algorithms, or conclusions unless explicitly requested.

-   If a derivation is incomplete, mark the gap clearly rather than filling it with unsupported steps.

-   Check that equations and surrounding prose agree.

## MCMC and Gibbs sampling rules

When editing material on MCMC, Gibbs sampling, or posterior computation:

-   Clearly distinguish algorithm steps from model assumptions.

-   State what is sampled in each step.

-   Keep conditional distributions consistent with the model definition.

-   Do not invent convergence results, effective sample sizes, diagnostics, or simulation outcomes.

-   Do not claim convergence unless supported by supplied output or code.

-   If diagnostic evidence is missing, mark the claim as `[unsupported]`.

## Genetics and genomics context

Some examples may relate Bayesian Linear Regression to genomic prediction, marker effects, fine mapping, or quantitative genetics.

When editing genetics/genomics material:

-   Do not invent biological interpretations.

-   Do not invent marker effects, causal variants, genomic regions, traits, p-values, posterior probabilities, or sample sizes.

-   Make clear when data are simulated or toy examples.

-   Do not present toy examples as real scientific findings.

-   Use cautious wording for associations, prediction, and fine-mapping interpretations.

## Teaching and explanation rules

When editing teaching material:

-   Write clearly for students.

-   Prefer short, pronounceable sentences for slides and speaker notes.

-   Explain equations in words.

-   Use examples to clarify notation when appropriate.

-   Avoid overcrowded slides.

-   Avoid overly dense paragraphs in slides.

-   Keep notes detailed enough for self-study.

-   Keep tutorials concrete and reproducible.

-   Distinguish intuition from formal derivation.

## Audience

Unless otherwise specified, assume the audience is students or researchers learning Bayesian Linear Regression with some background in statistics, R, genetics, genomics, or quantitative genetics.

They may need careful explanation of:

-   matrix notation

-   likelihoods

-   priors and hyperpriors

-   posterior distributions

-   shrinkage

-   variable selection

-   Gibbs sampling

-   MCMC diagnostics

-   prediction accuracy

-   genomic marker effects

-   credible sets and fine mapping

## R and reproducibility rules

-   Prefer simple, readable R code in teaching examples.

-   Use small reproducible examples when possible.

-   Avoid private file paths.

-   Do not introduce new package dependencies unless clearly justified.

-   If adding dependencies, explain why.

-   Do not run long simulations unless explicitly asked.

-   Do not modify raw data files unless explicitly asked.

-   If examples use simulated data, make that clear.

-   Keep random seeds where reproducibility matters.

-   Do not change function behavior or analysis logic unless explicitly requested.

## Slides and narration

For slides:

-   Keep text concise.

-   Keep equations readable.

-   Avoid too much notation on one slide.

-   Prefer one main idea per slide.

-   Use speaker notes for explanation that is too detailed for the slide.

For narration or speaker notes:

-   Use wording that is easy to pronounce.

-   Avoid very long sentences.

-   Avoid dense abbreviations unless already introduced.

-   Keep spoken explanations aligned with the slide content.

-   Do not add unsupported claims in narration.

## Scientific-writing rules

-   Do not invent numerical results, sample sizes, p-values, posterior probabilities, credible intervals, effect sizes, model metrics, references, DOIs, methods, or conclusions.

-   Mark unsupported claims as `[unsupported]`.

-   Mark missing citation support as `[citation needed]`.

-   Distinguish observed results from interpretation.

-   Avoid causal language unless the design and context support it.

-   Treat AI-generated text as draft material requiring human review.

## Safe Codex workflow

For inspection tasks:

-   Read relevant files.

-   Summarize findings.

-   Do not edit files.

For editing tasks:

-   Make the smallest useful change.

-   Summarize changed files.

-   Show the diff.

-   State which checks were run.

-   State which files were not checked if relevant.

## Checks

Use the smallest relevant check for the task.

For a single Quarto file:

```         
quarto render path/to/file.qmd 
```

For an R script:

```         
parse("path/to/script.R") 
```

For focused R examples, run only the smallest relevant code block or script when appropriate.

Do not render the entire site, rebuild all slides, or run long simulations unless explicitly asked.

## High-risk actions requiring approval

Ask before:

-   rendering many files

-   rebuilding the full website

-   modifying generated outputs

-   changing repository structure

-   deleting files

-   changing dependencies

-   changing data files

-   running long simulations

-   changing mathematical derivations substantially

-   changing notation conventions across many files

-   committing changes

-   changing line endings or encoding

## Preferred response style

When reporting back:

-   State what was inspected.

-   State what was changed, if anything.

-   List checks run.

-   Mention any files not checked.

-   Highlight unresolved mathematical, notation, or reproducibility issues.

-   Keep recommendations concrete and actionable.
