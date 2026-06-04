#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 https://arxiv.org/abs/XXXX.XXXXX" >&2
  exit 1
fi

arxiv_url="$1"

case "$arxiv_url" in
  https://arxiv.org/abs/*|https://arxiv.org/pdf/*)
    ;;
  *)
    echo "Expected an arXiv abs or pdf URL, got: $arxiv_url" >&2
    exit 1
    ;;
esac

cat > paper/index.html <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Opening arXiv paper</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="canonical" href="$arxiv_url">
  <meta http-equiv="refresh" content="0; url=$arxiv_url">
  <script>
    window.location.replace("$arxiv_url");
  </script>
</head>
<body>
  <p>
    Opening the arXiv page.
    If it does not open automatically, click here:
    <a href="$arxiv_url">arXiv paper</a>
  </p>
</body>
</html>
EOF

echo "Updated paper/index.html to redirect to $arxiv_url"

