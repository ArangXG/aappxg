# am-ai Miner — Deploy ke Octa

## Step 1 — Push ke GitHub (sekali aja)

Tambah 2 secrets di repo GitHub:
**Settings → Secrets and variables → Actions → New repository secret**

| Secret | Value |
|--------|-------|
| `DOCKERHUB_USERNAME` | `arangxg` |
| `DOCKERHUB_TOKEN` | Token dari Docker Hub |

Push ke `main` → image otomatis build & push ke `arangxg/aappxg:latest`

---

## Step 2 — Configure di Octa

**Image Name:**
```
arangxg/aappxg:latest
```

**Environment Variables:**

| Key | Value |
|-----|-------|
| `HOST` | `stratum+tcp://us2.alphapool.tech:5566` |
| `USER` | `prl1pALAMAT_PRL_KAMU` |
| `WORKER` | `rig01` |
| `PASSWORD` | `x;d=65536` |

Klik **Deploy**.
