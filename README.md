# Project Overview
The [chatDeFi.app](http://chatdefi.app) AI agent democratizes DeFi by enabling anyone to create and execute DeFi investment strategies by simply typing in their desired DeFi investment strategy into a user-friendly chatbot interface. Our AI agent then executes these strategies automatically.

For example, you could instruct our AI agent to:
“Allocate my wallet funds to the highest yielding DeFi lending protocols with lending pools that earn at least 5% APY. To manage my risk, split my wallet funds across 2 lending pools with 70% in one pool and 30% in another. Also, if my portfolio loses 10% of its funds, then stop managing my portfolio.”

Our AI agent will parse your natural language request into the corresponding DeFi strategy and actively manage and rebalance your portfolio according to the parameters you define.

Key Components
* Front-end: [chatDeFi.app](http://chatdefi.app) houses the chatbot interface to enter in your desired DeFi strategy in plain english.
* Back-end: AI agent will process/interpret your strategy, manage your wallet funds, transfer your wallet funds to the approriate DeFi protocol (per your investment strategy parameters), and auto-stop if certain risk parameters are reached

Key Features
* Blockchains supported: Celo, Polygon, Saga
* DeFi protocols supported: DeFi lending (i.e. Aave, compound, etc.; varies by blockchain)
* DeFi strategies supported: 
  * i) Portfolio allocation strategy (i.e. 80%/20% or 70/30% splits across x number of DeFi lending pools), 
  * ii) Risk management strategy (i.e. auto-stop AI agent if portfolio value falls 10%) 
  * iii) Min. Return requirements (i.e. only invest in pools with min. return of x%)

Future Roadmap
* Support additional DeFi protocols (DEX trading, perpetual trading, yield optimizers) 
* "Invest" feature - co-invest alongside an existing DeFi strategy (aka vault) on the platform (instead of creating your own DeFi investment)

---

# Polygon Deployment

### Polygon Prize Requirements Met:
  * Our [chatDeFi.app](http://chatDeFi.app) AI agent controls smart contract that create "vaults" (aka DeFi investment strategies) that users create via our chatBot interface. These smart contract can be found here: `[Varad to enter in smart contract address]`
    
### Polygon Resources Used
* GOAT SDK (by Crossmint) features used:
    * [Agent Wallets](https://docs.crossmint.com/wallets/quickstarts/agent-wallets) - creates AI agent to control wallets that will execute user's desired DeFi investment strategy
    * ???Server Wallets???

* Crossmint SDK
    * Our DeFi chatbot used these Crossmint features:
      * Wallet Creations???
      * Delegated Signers?????
      * Sending Transactions

---
# Saga Chainlet Deployment

### Polygon Prize Requirements Met:
* Smart contract deployed to Saga Chainlet at address below:
  * `[Varad to enter in address]`
  * UI/Frontend exists (see http://chatdefi.app)

### Overview
[See Overview section at the top]

### Why Saga?
Successfully projects will be quickly constrained by scalability issues. Launching our project on Saga will guarantee chatDeFi easy horizontal scaling via its Chainlet architecture (i.e. each chatDeFi vault strategy can exist on its own chainlet). Also, fees are much more predictable since the Saga chainlet’s blockspace is not shared with other projects (whose sudden spike in popularity/usage often causes transaction fees to rise significantly).
