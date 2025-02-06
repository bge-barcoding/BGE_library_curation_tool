# BGE library curation tool

This BGE library curation tool is a standalone programm to be used by taxonomic experts to pick records (sequences) to be part of a european reference library for animal species in europe. The tool should only be used by taxonomic experts. The results will be used to create a European reference library as part of the EU project [Biodiversity Genomics Europe](https://biodiversitygenomics.eu/).

## Installation

### Dependencies
*  [node.js](https://nodejs.org/en)
*  [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) 

Copy or clone the repository. Navigate to the folder BGE_library_curation_tool and type npm start to start the server.

```shell
cd BGE_library_curation_tool
npm start
```
open any browser (firefox, Chrome etc) 
go to localhost:3000
When starting the programm for the first time, wait until all reads are loaded in into the database.
 
## Usage

To use the tool, a dataset is required that originates from the [library curation pipeline](https://github.com/FabianDeister/Library_curation_BOLD).  
The data is provided to users in the form of an XML file (data.xml). This file must be stored in the folder in which the server.js file is also located.
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
Once the data has been added to the folder and all dependencies are available, open a Terminal, navigate to the folder BGE_library_curation_tool.

```bash
cd BGE_Library_curation_tool
start server.js
``` 
The server runs locally and can be reached in the browser under [localhost:3000](localhost:3000) with the default settings.

### First start
When you start the server for the first time, a new database is created into which the data from data.xml is read. This takes a different amount of time depending on the size of the data set and the resources of the machine. This happens once and is not repeated when the machine is restarted. Do not switch off the machine while the data is being read in. 
