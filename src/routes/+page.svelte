<script lang="ts">
</script>

<svelte:head>
  <title>LxLedger – Your Velocity. Your Ledger.</title>
  <meta name="description" content="Blockchain-backed learning credentials. Immutable velocity data you own. Portable proof of mastery.">

  <!-- Open Graph (Facebook, LinkedIn, Discord, Slack) -->
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://www.lxledger.com/" />
  <meta property="og:title" content="LxLedger – Your Velocity. Your Ledger." />
  <meta property="og:description" content="Blockchain-backed learning credentials. Immutable velocity data you own. L(earn)² = Merit." />
  <meta property="og:image" content="https://www.lxledger.com/og-image.png" />
  <meta property="og:image:width" content="1200" />
  <meta property="og:image:height" content="630" />

  <!-- Twitter/X Card -->
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:url" content="https://www.lxledger.com/" />
  <meta name="twitter:title" content="LxLedger – Your Velocity. Your Ledger." />
  <meta name="twitter:description" content="Blockchain-backed learning credentials. Immutable velocity data you own. L(earn)² = Merit." />
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
    justify-content: flex-start;
    padding: 12vh 2rem 2rem;
    line-height: 1.6;
  }

  .container {
    max-width: 800px;
    text-align: center;
    animation: fadeIn 1s ease-in;
  }

  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
  }

  .logo {
    width: 180px;
    height: auto;
    margin: 0 auto 2rem;
    filter: drop-shadow(0 10px 30px rgba(0, 0, 0, 0.5));
    transition: transform 0.3s ease;
  }

  .logo:hover {
    transform: scale(1.05);
  }

  h1 {
    font-family: 'Cinzel', serif;
    font-size: clamp(2.5rem, 8vw, 4.5rem);
    margin-bottom: 1rem;
    color: #b5c4c4;
    font-weight: 600;
    letter-spacing: 0.02em;
  }

  /* Subscript x styling (like Rx for prescriptions) */
  .subscript-x {
    font-size: 0.65em;
    vertical-align: baseline;
    position: relative;
    top: 0.15em;
    margin: 0 -0.05em;
  }

  .hero-tagline {
    font-family: 'Cinzel', serif;
    font-size: clamp(1.5rem, 4vw, 2.2rem);
    margin-bottom: 0.5rem;
    color: #8fa8a8;
    font-weight: 600;
    letter-spacing: 0.03em;
  }

  .product-subtitle {
    font-size: clamp(1rem, 2.5vw, 1.2rem);
    margin-bottom: 2rem;
    color: #7a9292;
    font-weight: 300;
    font-style: italic;
  }

  .tagline {
    font-size: clamp(1.1rem, 2.5vw, 1.4rem);
    max-width: 650px;
    margin: 0 auto 2.5rem;
    color: #c2d0d0;
    font-weight: 300;
    line-height: 1.8;
  }

  .highlight {
    color: #8fa8a8;
    font-weight: 400;
  }

  .features {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 1.5rem;
    margin: 2rem 0 2.5rem;
    text-align: left;
  }

  .feature {
    padding: 1.25rem;
    background: rgba(255, 255, 255, 0.03);
    border-radius: 12px;
    border: 1px solid rgba(143, 168, 168, 0.15);
  }

  .feature h3 {
    font-family: 'Cinzel', serif;
    font-size: 1.05rem;
    color: #b5c4c4;
    margin-bottom: 0.5rem;
  }

  .feature p {
    font-size: 0.9rem;
    color: #7a9292;
    line-height: 1.5;
  }

  .info {
    font-size: clamp(1rem, 2vw, 1.2rem);
    margin-bottom: 1.25rem;
    color: #89a0a0;
  }

  .cta {
    display: inline-block;
    padding: 1rem 2.5rem;
    margin: 0.75rem;
    background: linear-gradient(135deg, #4a7070 0%, #3d5f5f 100%);
    color: #e8f0f0;
    text-decoration: none;
    border-radius: 8px;
    font-weight: 600;
    font-size: 1.1rem;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(74, 112, 112, 0.3);
  }

  .cta:hover {
    background: linear-gradient(135deg, #3d5f5f 0%, #2f4d4d 100%);
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(74, 112, 112, 0.4);
  }

  .divider {
    width: 60px;
    height: 2px;
    background: linear-gradient(90deg, transparent, #8fa8a8, transparent);
    margin: 2.5rem auto;
  }

  .ecosystem {
    margin-top: 1.5rem;
    padding: 1.25rem;
    background: rgba(255, 255, 255, 0.02);
    border-radius: 12px;
    border: 1px solid rgba(143, 168, 168, 0.1);
  }

  .ecosystem p {
    font-size: 0.9rem;
    color: #7a9292;
    margin-bottom: 0.4rem;
  }

  .ecosystem p:last-child {
    margin-bottom: 0;
  }

  .ecosystem a {
    color: #8fa8a8;
    text-decoration: none;
    transition: color 0.2s ease;
  }

  .ecosystem a:hover {
    color: #b5c4c4;
  }

  .ecosystem strong {
    color: #b5c4c4;
  }

  footer {
    margin-top: 3rem;
    font-size: 0.9rem;
    color: #5f7676;
    font-weight: 300;
  }

  footer a {
    color: #8fa8a8;
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
      width: 140px;
    }

    .container {
      padding: 1rem;
    }

    .cta {
      padding: 0.875rem 2rem;
      font-size: 1rem;
    }

    .features {
      grid-template-columns: 1fr;
    }
  }
</style>

<div class="page">
  <nav class="nav">
    <a href="/about">About</a>
    <a href="https://www.lxmerit.com">L<span class="subscript-x">x</span>Merit</a>
  </nav>
  <div class="container">
    <img src="/lxm-logo-grey-letters.jpg" alt="LxLedger Shield Logo" class="logo">

    <h1>L<span class="subscript-x">x</span>Ledger</h1>

    <div class="hero-tagline">Your Velocity. Your Ledger.</div>
    <div class="product-subtitle">Blockchain-Backed Learning Credentials</div>

    <p class="tagline">
      <span class="highlight">Classical Curriculum.</span>
      <span class="highlight">Instrumented Mastery.</span><br>
      Every action recorded. Immutable proof of what you learned, how fast you learned it, and that you actually did the work.
    </p>

    <div class="features">
      <div class="feature">
        <h3>Immutable Record</h3>
        <p>Every learning action cryptographically sealed. No grade inflation. No credential fraud. Just truth.</p>
      </div>
      <div class="feature">
        <h3>You Own It</h3>
        <p>Your velocity data belongs to you. Export it. Take it anywhere. Like your genome, but for learning.</p>
      </div>
      <div class="feature">
        <h3>Portable Proof</h3>
        <p>Universities, employers, anyone can verify your credentials without trusting us. The math doesn't lie.</p>
      </div>
    </div>

    <div class="divider"></div>

    <p class="info">Coming 2026</p>

    <a href="https://www.lxmerit.com" class="cta">Learn on L<span class="subscript-x">x</span>Merit</a>

    <div class="ecosystem">
      <p><strong>Part of the L<span class="subscript-x">x</span>Merit ecosystem</strong></p>
      <p><a href="https://www.lxmerit.com">L<span class="subscript-x">x</span>Merit.com</a> &ndash; Where you learn</p>
      <p><strong>L<span class="subscript-x">x</span>Ledger.com</strong> &ndash; What you take with you</p>
    </div>

    <footer>
      <p>L(earn)<sup>2</sup> = Merit</p>
      <p style="margin-top: 0.75rem;">&copy; 2025 LxMerit &bull; <a href="mailto:patrick@lxmerit.com">patrick@lxmerit.com</a></p>
    </footer>
  </div>
</div>
