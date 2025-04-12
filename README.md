##  Azure Data Pipeline – AdventureWorks Project

Ce projet met en œuvre une pipeline de traitement de données sur Azure pour transformer les données de la base **AdventureWorksLT** et les visualiser dans un **dashboard Power BI**.

---

##  Objectifs du Projet

- Automatiser le flux de données de Bronze → Silver → Gold
- Créer des vues Serverless dans Synapse pour l'analyse
- Construire un dashboard interactif avec Power BI

---

##  Technologies utilisées

| Outil | Rôle |
|------|------|
| **Azure Data Factory** | Orchestration des pipelines |
| **Azure Synapse Analytics** | Stockage Silver/Gold & requêtes serverless |
| **Azure Data Lake Storage Gen2** | Stockage des fichiers `.parquet` |
| **Databricks** | Nettoyage et transformation des données (notebooks) |
| **SQL Server + .bak** | Source des données AdventureWorks |
| **Power BI** | Visualisation des KPIs |

---

## 🗂️ Arborescence du projet
Azure_data_pipeline/ ├── dashboard/ # Dashboard Power BI (.pbix) ├── data/ # Données brutes (.csv) ├── notebooks/ # Notebooks Databricks ├── pipelines/ # Pipelines exportés (ADF ou Synapse) ├── scripts/ # Scripts SQL et PowerShell └── README.md

---

## 📦 Données

- Fichier `.bak` de la base : `AdventureWorksLT2022.bak`
- Export CSV : via script `export_tables.ps1` dans `scripts/`

---

## ▶️ Exécution locale

1. Restaurer la base SQL depuis le `.bak`
2. Lancer `export_tables.ps1` pour générer les CSV
3. Charger les fichiers `.csv` dans Power BI

---

## 👤 Auteur

**Mohamed Aymen Halleb**  
Étudiant en ingénierie informatique à l'EILCO  
[LinkedIn](https://www.linkedin.com/in/mohamed-aymen-halleb)

---

## ⭐ Remarques

- Ce projet est 100% local & open-source.
- Il peut être déployé sur Azure ou exécuté localement.
---
