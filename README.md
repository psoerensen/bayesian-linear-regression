---
title: "Classical and Bayesian Linear Regression"
format:
  html:
    theme: flatly
    toc: false
---

# Classical and Bayesian Linear Regression

Welcome! ??  

This site contains interactive **Quarto documents** demonstrating and comparing different linear regression models — from classical OLS to Bayesian approaches with Gaussian and spike-and-slab priors.  

Each section includes both **mathematical explanations** and **executable R code** for simulation, estimation, and inference.

---

## ?? Overview

| Topic | Description |
|-------|--------------|
| [Notes](notes.html) | Theoretical notes on Bayesian linear regression, priors, Gibbs sampling, and convergence diagnostics |
| [Classical Regression](classical_linear_regression_simulation.html) | Simulation and inference using Ordinary Least Squares (OLS) |
| [Bayesian (Gaussian Prior)](bayesian_linear_regression_conjugate.html) | Bayesian regression with conjugate Gaussian priors and closed-form Gibbs updates |
| [Bayesian (Spike & Slab)](bayesian_spike_and_slab.html) | Sparse Bayesian regression with spike-and-slab priors, variable selection, and posterior inclusion probabilities |

---

## ?? Reproducibility

All examples are written in **pure base R** and can be run directly in RStudio.  
You can explore, modify, and re-render them using Quarto:

```bash
quarto render
