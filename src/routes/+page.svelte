<script lang="ts">
</script>

<svelte:head>
  <title>LxLedger – The Immutable Merit Layer</title>
  <meta name="description" content="Every proof of mastery from the L(earn)² platform is instrumented, verified, and permanently etched here. Your learning velocity, forever on-chain.">

  <!-- Open Graph (Facebook, LinkedIn, Discord, Slack) -->
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://www.lxledger.com/" />
  <meta property="og:title" content="LxLedger – The Immutable Merit Layer" />
  <meta property="og:description" content="Your learning velocity, forever on-chain. No custodians. No inflation. No reversal." />
  <meta property="og:image" content="https://www.lxledger.com/og-image.png" />
  <meta property="og:image:width" content="1200" />
  <meta property="og:image:height" content="630" />

  <!-- Twitter/X Card -->
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:url" content="https://www.lxledger.com/" />
  <meta name="twitter:title" content="LxLedger – The Immutable Merit Layer" />
  <meta name="twitter:description" content="Your learning velocity, forever on-chain. No custodians. No inflation. No reversal." />
  <meta name="twitter:image" content="https://www.lxledger.com/og-image.png" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;600&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</svelte:head>

<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  .page {
    font-family: 'Inter', system-ui, -apple-system, sans-serif;
    background: linear-gradient(135deg, #1a2f2f 0%, #2d4545 100%);
    color: #d4dada;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 2rem;
    line-height: 1.6;
  }

  .container {
    max-width: 700px;
    text-align: center;
    animation: fadeIn 1s ease-in;
  }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
  }

  .logo {
    width: 160px;
    height: auto;
    margin: 0 auto 2.5rem;
    filter: drop-shadow(0 10px 30px rgba(0, 0, 0, 0.5));
    transition: transform 0.3s ease;
  }

  .logo:hover {
    transform: scale(1.05);
  }

  h1 {
    font-family: 'Cinzel', serif;
    font-size: clamp(2.5rem, 8vw, 4rem);
    margin-bottom: 0.75rem;
    color: #b5c4c4;
    font-weight: 600;
    letter-spacing: 0.02em;
  }

  .subscript-x {
    font-size: 0.65em;
    vertical-align: baseline;
    position: relative;
    top: 0.15em;
    margin: 0 -0.05em;
  }

  .hero-tagline {
    font-family: 'Cinzel', serif;
    font-size: clamp(1.3rem, 3.5vw, 1.8rem);
    margin-bottom: 2.5rem;
    color: #8fa8a8;
    font-weight: 400;
    letter-spacing: 0.02em;
    font-style: italic;
  }

  .description {
    font-size: clamp(1rem, 2.5vw, 1.2rem);
    max-width: 580px;
    margin: 0 auto 2rem;
    color: #c2d0d0;
    font-weight: 300;
    line-height: 1.9;
  }

  .manifesto {
    font-size: clamp(1.1rem, 2.5vw, 1.3rem);
    margin: 2rem 0;
    color: #b5c4c4;
    font-weight: 400;
    letter-spacing: 0.03em;
  }

  .chain-line {
    font-size: clamp(1rem, 2.5vw, 1.15rem);
    margin: 2.5rem 0;
    color: #8fa8a8;
    font-weight: 300;
    font-style: italic;
  }

  .divider {
    width: 60px;
    height: 2px;
    background: linear-gradient(90deg, transparent, #8fa8a8, transparent);
    margin: 2.5rem auto;
  }

  .ecosystem {
    margin: 2rem 0;
    font-size: 1.1rem;
    color: #7a9292;
  }

  .ecosystem a {
    color: #b5c4c4;
    text-decoration: none;
    transition: color 0.2s ease;
  }

  .ecosystem a:hover {
    color: #d4dada;
  }

  .launch {
    font-size: 1rem;
    color: #5f7676;
    margin-top: 1rem;
  }

  footer {
    margin-top: 2rem;
    font-size: 0.9rem;
    color: #5f7676;
    font-weight: 300;
    line-height: 1.8;
  }

  footer .tagline {
    font-size: 1rem;
    color: #7a9292;
    margin-bottom: 0.75rem;
  }

  footer .launch {
    margin-bottom: 1.5rem;
  }

  footer .copyright {
    font-size: 0.85rem;
    color: #4a5e5e;
  }

  footer a {
    color: #7a9292;
    text-decoration: none;
    transition: color 0.2s ease;
  }

  footer a:hover {
    color: #b5c4c4;
  }

  .nav {
    position: absolute;
    top: 1.5rem;
    right: 2rem;
    display: flex;
    gap: 2rem;
  }

  .nav a {
    color: #8fa8a8;
    text-decoration: none;
    font-size: 0.95rem;
    font-weight: 400;
    transition: color 0.2s ease;
  }

  .nav a:hover {
    color: #d4dada;
  }

  @media (max-width: 640px) {
    .logo {
      width: 130px;
    }

    .nav {
      top: 1rem;
      right: 1rem;
      gap: 1.25rem;
    }
  }
</style>

<div class="page">
  <nav class="nav">
    <a href="https://www.lxmerit.com">L<span class="subscript-x">x</span>Merit</a>
  </nav>

  <div class="container">
    <img src="/lxm-logo-grey-letters.jpg" alt="LxLedger Shield Logo" class="logo">

    <h1>L<span class="subscript-x">x</span>Ledger</h1>
    <div class="hero-tagline">The immutable merit layer.</div>

    <p class="description">
      Every proof of mastery from the L(earn)² platform is instrumented, verified, and permanently etched here.
    </p>

    <p class="manifesto">
      No custodians. No inflation. No reversal.
    </p>

    <p class="chain-line">
      Your learning velocity, forever on-chain.
    </p>

    <div class="divider"></div>

    <footer>
      <p class="tagline">L(earn)<sup>2</sup> = Merit | LxLedger.com</p>
      <p class="launch">Launching 2026</p>
      <p class="copyright">&copy; 2025 LxMerit &bull; Founded by Patrick Hardiman</p>
      <p><a href="mailto:patrick@lxmerit.com">patrick@lxmerit.com</a></p>
    </footer>
  </div>
</div>
