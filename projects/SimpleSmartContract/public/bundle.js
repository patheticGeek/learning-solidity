var contractABI = [];
var contractAddress = "0x47123Afe68544bd1D7350cD544c5F60A65889740";
var web3 = new Web3('http://localhost:9545');
var simpleSmartContract = new web3.eth.Contract(contractABI, contractAddress);
console.log(simpleSmartContract);

web3.eth.getAccounts().then(console.log)
