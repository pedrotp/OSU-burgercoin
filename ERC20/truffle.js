module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    dev: {
      host: "localhost",
      port: 9545,
      network_id: "*" // match any network
    },
    live: {
      network_id: 1,
      host: "localhost",
      port: 8545,
      gas: 2000000
    }
  }
};
