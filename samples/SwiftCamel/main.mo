import CustomerCreditTransferInitiationV03Types "CustomerCreditTransferInitiationV03Types";

  persistent actor {

    public func initiateTransfer(transfer : CustomerCreditTransferInitiationV03Types.CustomerCreditTransferInitiationV03) : async CustomerCreditTransferInitiationV03Types.CustomerCreditTransferInitiationV03 {
      return transfer;
  };

};