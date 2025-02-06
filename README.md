# BGE library curation tool

This BGE library curation tool is a standalone programm to be used by taxonomic experts to pick records (sequences) to be part of a european reference library for animal species in europe. The tool should only be used by taxonomic experts. The results will be used to create a European reference library as part of the EU project [Biodiversity Genomics Europe](https://biodiversitygenomics.eu/).

## Installation

### Dependencies
*  [node.js](https://nodejs.org/en)

Copy or clone the repository. Navigate to the folder BGE_library_curation_tool and type npm start to start the program.

```shell
cd BGE_library_curation_tool
npm start
```
open any browser (firefox, Chrome etc) 
go to localhost:3000
When starting the programm for the first time, wait until all reads are loaded in into the database.
 
## Usage

To use the tool, a dataset is required that originates from the [library curation pipeline](https://github.com/FabianDeister/Library_curation_BOLD).  
Dhe data is provided to users in the form of an XML file (data.xml). This file must be stored in the folder in which the server.js file is also located.
```bash
.
├── BGE_library_curation_tool
├── data.xml
├── logs
├── node_modules
├── package.json
├── public
└── server.js

```  
