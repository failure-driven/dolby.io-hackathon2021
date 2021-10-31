const tailwind = require('tailwindcss');
const purge = require('@fullhuman/postcss-purgecss');
const cssnano = require('cssnano');
const presetEnv = require('postcss-preset-env')({ stage: 1 });

const plugins =
  process.env.NODE_ENV === 'production'
    ? [tailwind, presetEnv, cssnano]
    : [tailwind, presetEnv];

module.exports = { plugins };
