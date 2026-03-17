# PQS Finder Local: G4-Quadruplex Detection Analysis

## Overview

This repository provides tools for identifying putative quadruplex sequences (PQS) in genomic data using the pqsfinder algorithm. Two execution environments are supported: cloud-based Binder for quick exploration, and local R Studio installation for complete analysis.

## Launch on Binder (Recommended for beginners)

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/e0zturk/pqsfinderlocal/main?urlpath=rstudio)

**Build time:** The initial setup takes 25–30 minutes.
**Session timeout:** If no activity occurs for an average of 10, the server shuts down.

> **⚠️ IMPORTANT:** Bookmark or save this Binder link. You will need it to restart your session.

```
https://mybinder.org/v2/gh/e0zturk/pqsfinderlocal/main
```

## Execution Environments

### Binder (Cloud)

Best for initial exploration and machines with limited resources.

**File:** `pqsfinderbinder.Rmd`

Features:
- No installation required
- Works entirely in web browser
- All dependencies pre-installed
- Pre-configured for cloud environment

Usage:
1. Click Binder badge above

2. Wait for environment to load (25-30 minutes)

3. Open `pqsfinderbinder.Rmd` in RStudio

4. Run chunks sequentially

   **Note:** The first two chunks must not be run for the Binder version.

5. Results saved to `/results`

### Local Installation

Best for production workflows and full feature access.

**File:** `pqsfinderlocal.Rmd`

Requirements:
- R 4.5.1 or higher
- 8 GB RAM minimum
- 5-10 GB disk space

Installation:
```bash
git clone https://github.com/e0zturk/pqsfinderlocal.git
cd pqsfinderlocal
```

Run first chunk to install dependencies via renv::restore()

## Reference Genome Data

Reference sequences are obtained from a separate repository:

[![GitHub](https://img.shields.io/badge/GitHub-dna__extractor-181717?logo=github)](https://github.com/e0zturk/dna_extractor)

**Important:** These are two distinct tools:
- `pqsfinderlocal` analyzes quadruplex sequences
- `dna_extractor` extracts genomic regions to FASTA

Workflow:
1. Use dna_extractor to extract your target genomic region
2. Save output as FASTA file
3. Place FASTA in `data/` folder of pqsfinderlocal

## Session Management (Binder)

### Timeout Handling

If your Binder session closes due to inactivity, use the rebuild URL:

```
https://mybinder.org/v2/gh/e0zturk/pqsfinderlocal/main?urlpath=rstudio&nocache=true
```

This forces cache refresh and rebuilds the environment (25-30 minutes).

**Note:** Use regular Binder link for normal access. Only use nocache parameter if session fails.

## Troubleshooting

### Package Errors in Binder

Try the rebuild URL above. If issues persist, use local installation instead.

### Local Installation Issues

Verify R version:
```
R --version
```

Reinstall packages by running the first chunk of `pqsfinderlocal.Rmd`.

### Memory Issues

Ensure 8 GB RAM available. Close other applications if needed.

### Connection Loss

**Binder:** Use the rebuild URL above
**Local:** Work persists; no session management needed

## Output Files

Analysis results are saved to `/results/`:

- `pqs_scores.png` - Scoring distribution visualization
- `pqs_results.csv` - Tabular results with coordinates and metrics
- `test_result.fa` - FASTA format sequences
- `Gviz_track(genomic range cordinates).png` - A Gviz visualisation of genomic coordinate data

## References

pqsfinder algorithm and documentation:
Hoksza D, Martínek T, Růžička R. (2016). pqsfinder: an R/Bioconductor package for identification of G-quadruplex forming sequences in DNA. Bioinformatics, 32(5), 753-759.

---

# PQS Finder Local: G4-Dörtlü Dizi Tespit Analizi

## Özet

Bu depo, pqsfinder algoritması kullanarak genomik verilerde putative dörtlü dizi (PQS) tanımlanması için araçlar sağlamaktadır. İki çalışma ortamı desteklenmektedir: bulut tabanlı Binder ve yerel R Studio kurulumu.

## Binder'da Çalıştırma (Yeniler için tavsiye edilen)

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/e0zturk/pqsfinderlocal/main?urlpath=rstudio)

**Oluşturma süresi:** İlk  kurulum 25-30 dakika sürmektedir.
**Oturum zaman aşımı:** Ortalama 10  dakika boyunca işlem yapılmaması durumunda oturum sonlandırılır.

> **⚠️ ÖNEMLİ:** Bu Binder bağlantısını yer imlerine ekleyin veya kaydedin. Oturumunuzu yeniden başlatmak için buna ihtiyacınız olabilir.

```
https://mybinder.org/v2/gh/e0zturk/pqsfinderlocal/main
```

## Çalışma Ortamları

### Binder (Bulut)

İlk inceleme ve sınırlı kaynaklı bilgisayarlar için uygundur.

**Dosya:** `pqsfinderbinder.Rmd`

Özellikler:
- Kurulum gerekmez
- Tamamen web tarayıcısında çalışır.
- Tüm bağımlılıklar önceden kuruludur.
- Bulut ortamı için ön yapılandırılmıştır.

Kullanım:
1. Yukarıdaki Binder linkini tıklayın

2. Ortamın yüklenmesini bekleyin (25-30 dakika)

3. RStudio'da `pqsfinderbinder.Rmd` dosyasını açın

4. Chunk'ları sırasıyla çalıştırın

   **Not :** Binder sürümü için ilk iki chunk çalıştırılmaması gerekir.

5. Sonuçlar `/results` dizinine kaydedilir

### Yerel Kurulum

Üretim iş akışları ve tam özellik erişimi için uygundur.

**Dosya:** `pqsfinderlocal.Rmd`

Gereksinimler:
- R 4.5.1 veya daha yüksek
- Minimum 8 GB RAM
- 5-10 GB disk alanı

Kurulum:
```bash
git clone https://github.com/e0zturk/pqsfinderlocal.git
cd pqsfinderlocal
```

Bağımlılıkları yüklemek için ilk chunk'u çalıştırın (renv::restore())

## Referans Genom Verileri

Referans dizileri ayrı bir depodan temin edilir:

[![GitHub](https://img.shields.io/badge/GitHub-dna__extractor-181717?logo=github)](https://github.com/e0zturk/dna_extractor)

**Önemli:** İki farklı araçtır:
- `pqsfinderlocal` dörtlü dizileri analiz eder
- `dna_extractor` genomik bölgeleri FASTA'ya çıkarır

İş akışı:
1. dna_extractor kullanarak hedef genomik bölgeyi çıkarın
2. Çıktıyı FASTA dosyası olarak kaydedin
3. FASTA dosyasını pqsfinderlocal'ın `data/` klasörüne yerleştirin

## Oturum Yönetimi (Binder)

### Zaman Aşımı Durumları

Binder oturumunuz hareketsizlik nedeniyle kapanırsa, yeniden oluşturma linkini kullanın:

```
https://mybinder.org/v2/gh/e0zturk/pqsfinderlocal/main?urlpath=rstudio&nocache=true
```

Bu işlem önbelleği yeniler ve ortamı yeniden oluşturur (25-30 dakika gerekir).

**Not:** Normal erişim için düzenli Binder linkini kullanın. Sadece oturum başarısız olursa nocache parametresini kullanın.

## Sorun Giderme

### Binder'da Paket Hataları

Yukarıdaki yeniden oluşturma linkini deneyin. Sorunlar devam ederse yerel kuruluma geçin.

### Yerel Kurulum Sorunları

R versiyonunu doğrulayın:
```
R --version
```

`pqsfinderlocal.Rmd`'nin ilk chunk'unu çalıştırarak paketleri yeniden yükleyin.

### Bellek Sorunları

8 GB RAM'in kullanılabilir olduğundan emin olun. Gerekiyorsa diğer uygulamaları kapatın.

### Bağlantı Kaybı

**Binder:** Yukarıdaki yeniden oluşturma linkini kullanın
**Yerel:** Çalışma yerel olarak devam eder; oturum yönetimi gerekmez

## Çıktı Dosyaları

Analiz sonuçları `/results/` dizinine kaydedilir:

- `pqs_scores.png` - Puanlama dağılımı görselleştirmesi
- `pqs_results.csv` - Koordinat ve metrikler içeren tablo verileri
- `test_result.fa` - FASTA formatı dizileri
- `Gviz_track(genomic range cordinates).png` - Genomik kordinat bilgisi adıyla Gviz görseli

## Kaynaklar

pqsfinder algoritması ve dokümantasyon:
Hoksza D, Martínek T, Růžička R. (2016). pqsfinder: an R/Bioconductor package for identification of G-quadruplex forming sequences in DNA. Bioinformatics, 32(5), 753-759.
