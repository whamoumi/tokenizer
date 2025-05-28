const hre = require('hardhat')

async function main(){
    const Mytoken = await hre.ethers.getContractFactory("MyToken");
    const mytoken = await Mytoken.deploy(100000000000);

    await mytoken.waitForDeployment();

    console.log('deploye', await mytoken.getAddress())
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1
});