# am-ai Miner — Deploy ke Octa

## Step 1 — Setup GitHub Actions (sekali aja)

Tambah 2 secrets di repo GitHub:
**Settings → Secrets and variables → Actions → New repository secret**

| Secret | Value |
|--------|-------|
| `DOCKERHUB_USERNAME` | `arangxg` |
| `DOCKERHUB_TOKEN` | Token dari Docker Hub* |

*Buat token: Docker Hub → **Account Settings → Security → New Access Token**

Push ke branch `main` → image otomatis build & push ke `arangxg/aappxg:latest`

---

## Step 2 — Deploy di Octa

**Image Name:**
```
arangxg/aappxg:latest
```

**Environment Variables (isi di Octa UI):**

| Key | Value |
|-----|-------|
| `POOL` | `stratum+tcp://us2.alphapool.tech:5566` (sudah default) |
| `ADDRESS` | `prl1pALAMAT_PRL_KAMU` ← **wajib diisi** |
| `WORKER` | `rig01` (sudah default) |
| `PASSWORD` | `x;d=65536` (sudah default) |

Klik **Deploy** — selesai.

---

## Info Image

- Base: `nvidia/cuda:12.4.1-runtime-ubuntu22.04`
- Arch: `linux/amd64`
- GPU: NVIDIA Ampere (RTX 3090) ke atas
- VRAM: ~2-3 GB
