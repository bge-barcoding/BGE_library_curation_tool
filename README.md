# BGE library curation tool

[![DOI](https://zenodo.org/badge/990549788.svg)](https://doi.org/10.5281/zenodo.18877958)

This BGE library curation tool is a standalone programm to be used by taxonomic experts to curate records from BOLD database pre-curated by this [bioinformatic pipeline](https://github.com/bge-barcoding/bold-library-curation) to be part of a european reference library for animal species in europe. The results will be used to create a European reference library as part of the EU project [Biodiversity Genomics Europe](https://biodiversitygenomics.eu/).

## Installation
This repository contains the **Linux- and Mac-Version**. For Windows, please go to [BGE_library_curation_tool_win](https://bge-barcoding.github.io/manual-curation/)

**Please also download the corresponding database files for the families you wish to curate from this website!**

You will also find there a **video tutorial and FAQs**.

### Dependencies
*  [node.js](https://nodejs.org/en)
*  [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) 

# 🔧 Installation Guide (Linux & macOS)

Follow these steps to set up the tool on your system:

---

## 1. Copy or Clone the Repository 

```bash
git clone https://github.com/your-username/your-repo-name.git
```
and navigate to the folder: BGE_library_curation_tool

```bash
cd BGE_library_curation_tool
```
Start the tool, if npm is already installed. **Otherwise, please continue with point 2.**

```bash
npm start
```
open any browser (firefox, Chrome etc) 
go to [localhost:3000](http://localhost:3000)

## 2. Remove Old Dependencies (if any)

```bash
rm -rf node_modules package-lock.json
npm cache clean --force
```

## 3. Check Your System Architecture

```bash
uname -m                # Should return: arm64
node -p "process.arch"  # Should return: arm64
```

If you see x64, you're using Rosetta. Install the native ARM version of Node with nvm:

```bash
nvm install node
nvm use node
```
## 4. Install Dependencies

```bash
npm install
```

If you run into issues with sqlite3, install it from source:

```bash
npm install sqlite3 --build-from-source
```

## 5. Start the Tool

```bash
npm start
```

## Then open your browser at:

```arduino
http://localhost:3000
```

✅ Notes

    This works for both Linux and macOS.

    Requires Node.js (v18 or newer) and npm.

    Use nvm to manage Node versions easily.    
 
## Usage

**To use the tool, a dataset is required that originates from the [library curation pipeline](https://bge-barcoding.github.io/manual-curation/).**  
The data is provided to users in the form of a database file (data.db). Extract the folder you have downloaded and place the .db file within the sub-folder data/.

```bash
BGE_library_curation_tool/
├── data/       # Please place the .db files within this subfolder
├── logs/       # Once you have finished your curation, please copy the changes.log file and sent it back to (curation_tool@snsb.de and kuehbandner@snsb.de)
├── public/
├── package.json
├── server.js
└── user_manual_windows.html # user manaual for windows, but beside installation and starting everything should work the same way.
```
Refresh [http://localhost:3000](http://localhost:3000) in your browser and you should be able to select the taxa you wish to curate from the drowdown menue. Please continue with the user_manual_windows.html.
