
# **Data Warehouse Fit-Tracker**

## **Ringkasan**
Proyek ini fokus pada perancangan dan pengembangan **Data Warehouse** (DW) untuk **Fit-Tracker**, sebuah aplikasi kebugaran digital yang mengintegrasikan data dari perangkat wearable seperti Fitbit dan Apple Watch. Dengan meningkatnya volume data kesehatan dan kebugaran yang dihasilkan, sistem ini bertujuan untuk memusatkan dan mengorganisir data tersebut, guna mendukung analisis dan pengambilan keputusan yang lebih efektif.

## **Daftar Isi**
- [Latar Belakang](#latar-belakang)
- [Tujuan dan Ruang Lingkup Sistem](#tujuan-dan-ruang-lingkup-sistem)
- [Metodologi](#metodologi)
- [Implementasi](#implementasi)
- [Fitur Utama](#fitur-utama)
- [Tangkapan Layar](#tangkapan-layar)
- [Pengembangan di Masa Depan](#pengembangan-di-masa-depan)
- [Anggota Tim](#anggota-tim)

## **Latar Belakang**
**Data Warehouse Fit-Tracker** dikembangkan untuk menangani dataset yang besar dan beragam yang dihasilkan oleh perangkat wearable. Perangkat ini melacak berbagai metrik seperti langkah, detak jantung, kalori terbakar, durasi latihan, dan profil pengguna. Sistem ini mengintegrasikan data dari berbagai sumber ke dalam database terpusat, mengubah data yang terfragmentasi menjadi wawasan yang dapat ditindaklanjuti untuk berbagai departemen bisnis, seperti pengembangan produk, pemasaran, dan keuangan.

## **Tujuan dan Ruang Lingkup Sistem**
### Tujuan:
1. Menyediakan repositori data terpusat yang mendukung analisis historis dan real-time.
2. Memungkinkan analisis lanjutan seperti segmentasi pengguna, tren penggunaan fitur, dan performa langganan.
3. Mendukung pengambilan keputusan berbasis data oleh berbagai departemen perusahaan.

### Ruang Lingkup:
- **Data Aktivitas Pengguna:** Melacak latihan pengguna, durasi, kalori terbakar, dan jenis latihan.
- **Data Profil Pengguna:** Menyimpan data demografis dan biometrik seperti usia, tinggi badan, dan berat badan.
- **Data Langganan Pengguna:** Mengelola paket langganan dan fitur terkait.
- **Data Waktu Aktivitas:** Melacak tanggal dan waktu terperinci untuk setiap latihan.

## **Metodologi**
Sistem ini dikembangkan menggunakan **Waterfall Model**, memastikan pendekatan yang terstruktur dan linier untuk setiap fase pengembangan, mulai dari desain hingga implementasi:
1. **Analisis Kebutuhan:** Mengumpulkan kebutuhan data melalui wawancara dan tinjauan dokumen.
2. **Desain Skema:** Membuat model konseptual, logikal, dan fisik.
3. **Implementasi ETL:** Ekstraksi, transformasi, dan pemuatan data menggunakan Python dan SQL Server.
4. **Evaluasi dan Pelaporan:** Menguji sistem, memverifikasi integritas data, dan menghasilkan laporan analitik.

## **Implementasi**
- **Proses ETL:** Pengambilan data dari sumber mentah seperti file CSV, transformasi, dan pemuatan ke dalam database.
- **Penyimpanan Data:** SQL Server digunakan sebagai database relasional untuk menyimpan data yang sudah ditransformasikan.
- **Tools yang Digunakan:**
  - SQL Server untuk manajemen data
  - Python (SQLAlchemy dan Pandas) untuk pemrosesan ETL
  - SQL Server Import Wizard untuk pengimporan data

## **Fitur Utama**
- **Desain Star Schema:** Tabel fakta pusat yang dikelilingi oleh tabel dimensi, mengoptimalkan performa query untuk analisis.
- **Query Analitik Lanjutan:** Memberikan wawasan seperti total kalori terbakar, durasi latihan rata-rata, dan tren keterlibatan pengguna.
- **Segmentasi Pengguna:** Memungkinkan analisis mendalam tentang profil dan perilaku pengguna.

## **Tangkapan Layar**
1. **Proses ETL:** Tangkapan layar pengimporan data dari CSV ke SQL Server.
2. **Skema Database:** Representasi visual tabel dan hubungan dalam SQL Server.
3. **Hasil Query:** Contoh hasil query analitik seperti total kalori terbakar per pengguna.

## **Pengembangan di Masa Depan**
- **Integrasi Data Real-Time:** Menghubungkan ke perangkat wearable (e.g., Fitbit, Apple Watch) untuk pengumpulan data real-time.
- **Otomatisasi:** Integrasi Apache Airflow untuk otomatisasi proses ETL.
- **Machine Learning:** Mengimplementasikan model prediktif untuk retensi pengguna berdasarkan data aktivitas historis.
- **Dashboard:** Mengembangkan dashboard interaktif menggunakan Power BI atau Tableau untuk visualisasi data yang lebih baik.

## **Anggota Tim**
- **Muhammad Bagas Kurnia:** Pengembangan ETL
- **Jihan Putri Yani:** Dokumentasi dan Visualisasi
- **Kemas Veriandra R:** Pengelolaan Repository dan Pengujian
- **Ganiya Syazwa:** Dokumentasi dan Desain
- **Novelia Adinda:** Dokumentasi dan Desain

