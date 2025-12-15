# Logo Files - Rawaa Al-Sharq

## Files Created

1. **logo.svg** - Vector logo file (scalable, best quality)
2. **logo-export.html** - HTML file with logo at different sizes for easy export
3. **convert-logo.sh** - Script to convert SVG to PNG (requires ImageMagick, Inkscape, or rsvg-convert)

## How to Get PNG Files

### Option 1: Using the Conversion Script (Recommended)

If you have ImageMagick, Inkscape, or librsvg installed:

```bash
./convert-logo.sh
```

This will create:
- `logo.png` (800x800px)
- `logo-200x200.png`
- `logo-400x400.png`
- `logo-800x800.png`

**Install conversion tools:**
- **macOS**: `brew install imagemagick` or `brew install inkscape`
- **Linux**: `sudo apt-get install imagemagick` or `sudo apt-get install inkscape`

### Option 2: Using Design Software

1. Open `logo.svg` in:
   - Adobe Illustrator
   - Inkscape (free)
   - Figma
   - Sketch
   - Affinity Designer

2. Export as PNG at your desired size

### Option 3: Online Converter

1. Go to [CloudConvert](https://cloudconvert.com/svg-to-png) or [Convertio](https://convertio.co/svg-png/)
2. Upload `logo.svg`
3. Set desired dimensions (e.g., 800x800px)
4. Download the PNG file

### Option 4: Browser Export

1. Open `logo-export.html` in your browser
2. Right-click on the logo size you want
3. Select "Inspect" or "Inspect Element"
4. In developer tools, find the `<svg>` element
5. Right-click on it and select "Capture node screenshot" (Chrome/Edge)
6. Or use a screenshot tool to capture the logo

### Option 5: Using Python (if you have cairosvg)

```bash
pip install cairosvg
python3 -c "import cairosvg; cairosvg.svg2png(url='logo.svg', write_to='logo.png', output_width=800, output_height=800)"
```

## Logo Colors

- **Deep Orange**: #FF6B35
- **Gold**: #F7B801
- **Navy Blue**: #1A237E

## Logo Description

The logo features:
- A rising sun (representing the East) with gradient from Deep Orange to Gold
- Digital circuit lines and network nodes in Navy Blue
- Modern minimalist design suitable for corporate use

## Recommended Sizes

- **Small**: 200x200px (favicon, small icons)
- **Medium**: 400x400px (social media, web use)
- **Large**: 800x800px (print, high-resolution displays)
- **Extra Large**: 1200x1200px (large print, banners)

## Contact

- Phone: 0912228282
- Location: Omar Al-Mukhtar Street, Tripoli, Libya

