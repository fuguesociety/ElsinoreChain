const solc =
require('solc');
const fs = require('fs');
const ContractCode =
fs.readFileSync('HamletToken.sol', 'utf8');
const compiledContract = solc.compile(contractCode, 1);
fs.writeFileSync('HamletToken.json',
JSON.stringify(compiledContract.contracts[':HamletToken']));