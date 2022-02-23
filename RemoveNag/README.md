# What this does
This removes the get premium nags.

These can simply be scaled down to zero as well. The Dashlet is tricky because it has controls that are registered outside of the main dashlet div, but it still removes it for the most part and that makes me happy enough.

# CSS
```css
.nexus-main-banner {
    transform: scale(0%);
}
.nexus-download-banner {
    transform: scale(0%);
}
```

# How to install
Put in your main style.scss file in your theme folder