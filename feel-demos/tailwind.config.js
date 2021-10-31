module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  experimental: {
    uniformColorPalette: true,
    extendedFontSizeScale: true,
  },
  purge: {
    content: ['./src/**/*.svelte', './public/*.html'],
    whitelistPatterns: [/svelte-/],
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
};
