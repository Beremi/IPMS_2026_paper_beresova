# IPMS 2026 paper link

Stable QR URL:

```text
https://beremi.github.io/IPMS_2026_paper_beresova/paper/
```

Use this URL for the presentation QR code. The QR code should not point
directly at the PDF, because this stable URL can later be redirected to arXiv
without changing the QR image.

Current setup:

```text
/paper/ -> /paper.pdf
```

After the arXiv page is public, update the redirect:

```bash
scripts/set-arxiv-redirect.sh https://arxiv.org/abs/XXXX.XXXXX
```

Then commit and push the changed `paper/index.html`. The QR image stays the
same.

QR assets for slides:

- `qr/paper-qr.png`
- `qr/paper-qr.svg`

GitHub repository:

```text
https://github.com/Beremi/IPMS_2026_paper_beresova
```
