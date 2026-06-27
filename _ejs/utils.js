// ejs/utils.js

function getFirstImage(item) {
  if (item.image) return item.image;
  if (!item.body) return null;

  const previewMatch = item.body.match(
    /<img[^>]+class=["'][^"']*\bpreview-image\b[^"']*["'][^>]+src=["']([^"']+)["']/i
  );
  if (previewMatch) return previewMatch[1];

  const firstMatch = item.body.match(/<img[^>]+src=["']([^"']+)["']/i);
  return firstMatch ? firstMatch[1] : null;
}

module.exports = { getFirstImage };

