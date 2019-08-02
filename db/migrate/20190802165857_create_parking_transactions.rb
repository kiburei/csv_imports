class CreateParkingTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_transactions do |t|
      t.string :RevenueStreamCode
      t.string :TransactionBy
      t.string :BillNo
      t.string :ReceiptNo
      t.string :StatusCode
      t.string :TransactionTypeCode
      t.string :TransactionType
      t.string :BillAmount
      t.decimal :AmountToPay
      t.string :WardId
      t.string :TransactionCode
      t.string :PrivatePSV
      t.string :Identifier
      t.string :Identifier2
      t.string :ClientName
      t.string :ChannelId
      t.string :ChannelFileNumber
      t.string :BriefDescription
      t.string :IncomeTypeId
      t.string :EntryVia
      t.string :RequestBy
      t.string :PaymentMethod
      t.string :BillType
      t.string :AccountNumber
      t.string :CostCenterId
      t.string :DetailSerialNo
      t.string :FeesId
      t.string :LocalAuthorityId
      t.string :StatusMessage
      t.string :Year
      t.string :Month
      t.string :CashierId
      t.string :Owner
      t.string :SentToLaifoms
      t.string :LaifomsBillNo
      t.string :LastReceiptAction
      t.string :LaifomsReceiptNo
      t.date :DateCreated
      t.date :LastModified

      t.timestamps
    end
  end
end
