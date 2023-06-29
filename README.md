# ISO20022/Swift message types, processes and samples

IC4J tool generated a version of #ISO20022  compatible #ICP Motoko types, available on this Github repository:  [https://github.com/dscope-io/ISO20022/tree/master/messages/Motoko]()
Currently, we cover the full Payments part of the specification 

* ACMT - Account Management
* ADMI - Administration
* AUTH - Authorities
* CAMT - Cash Management
* PACS - Payments Clearing and Settlement
* PAIN - Payments Initiation
* REDA - Reference Data
* REMT - Payments Remittance Advice

as defined in the #ISO20022 standard: [https://iso20022.org/iso-20022-message-definitions?business-domain=1]()

Additionally, we partially support the Cards specification. [https://www.iso20022.org/iso-20022-message-definitions?business-domain=16]()

* CAAA - Acceptor to Acquirer Card Transactions 
* CAIN - Acquirer to Issuer Card Transactions 
* CAAD - Card Administration 
* CAFC - Fee collection   

We plan to add more parts of the specifications and provide samples for writing #ICP smart contracts using the generated message types. Additionally, we might generate message types for other languages used in smart contracts, such as Rust, Python, and Typescript, in the future.