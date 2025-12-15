#!/bin/bash

# Script to convert logo.svg to PNG format
# Requires: ImageMagick (convert) or Inkscape or rsvg-convert

echo "Converting logo.svg to PNG..."

# Check for ImageMagick
if command -v convert &> /dev/null; then
    echo "Using ImageMagick..."
    convert -background none -density 300 logo.svg logo.png
    convert -background none -density 300 -resize 200x200 logo.svg logo-200x200.png
    convert -background none -density 300 -resize 400x400 logo.svg logo-400x400.png
    convert -background none -density 300 -resize 800x800 logo.svg logo-800x800.png
    echo "✓ PNG files created successfully!"
    exit 0
fi

# Check for Inkscape
if command -v inkscape &> /dev/null; then
    echo "Using Inkscape..."
    inkscape --export-type=png --export-filename=logo.png --export-width=800 --export-height=800 logo.svg
    inkscape --export-type=png --export-filename=logo-200x200.png --export-width=200 --export-height=200 logo.svg
    inkscape --export-type=png --export-filename=logo-400x400.png --export-width=400 --export-height=400 logo.svg
    inkscape --export-type=png --export-filename=logo-800x800.png --export-width=800 --export-height=800 logo.svg
    echo "✓ PNG files created successfully!"
    exit 0
fi

# Check for rsvg-convert
if command -v rsvg-convert &> /dev/null; then
    echo "Using rsvg-convert..."
    rsvg-convert -w 800 -h 800 logo.svg > logo-800x800.png
    rsvg-convert -w 200 -h 200 logo.svg > logo-200x200.png
    rsvg-convert -w 400 -h 400 logo.svg > logo-400x400.png
    rsvg-convert -w 800 -h 800 logo.svg > logo-800x800.png
    echo "✓ PNG files created successfully!"
    exit 0
fi

echo "❌ No conversion tool found!"
echo ""
echo "Please install one of the following:"
echo "  - ImageMagick: brew install imagemagick (macOS) or apt-get install imagemagick (Linux)"
echo "  - Inkscape: brew install inkscape (macOS) or apt-get install inkscape (Linux)"
echo "  - librsvg: brew install librsvg (macOS) or apt-get install librsvg2-bin (Linux)"
echo ""
echo "Alternatively, you can:"
echo "  1. Open logo.svg in a design tool (Adobe Illustrator, Inkscape, etc.) and export as PNG"
echo "  2. Use an online converter: https://cloudconvert.com/svg-to-png"
echo "  3. Open logo-export.html in a browser and use browser dev tools to export"

