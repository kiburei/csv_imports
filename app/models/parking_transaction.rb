class ParkingTransaction < ApplicationRecord

  def self.batch
    path = '/home/kiburei/Documents/RevenueSure ReconMate Files/fleetfix.csv'
    records = CSV.foreach(path, headers: true, :encoding => 'ISO-8859-1').map { |row|
      Hash[RevenueStreamCode: row[0],	TransactionBy: row[1],	BillNo: row[2],
      ReceiptNo: row[3],	StatusCode: row[4],	TransactionTypeCode: row[5],
      TransactionType: row[6],	 BillAmount: row[7], 	 AmountToPay: row[8],
      WardId: row[9],	TransactionCode: row[10],	PrivatePSV: row[11], Identifier: row[12],
      Identifier2: row[13],	ClientName: row[14],	ChannelId: row[15],
      ChannelFileNumber: row[16],	BriefDescription: row[17],	IncomeTypeId: row[18],
      EntryVia: row[19],	RequestBy: row[20],	PaymentMethod: row[21],	BillType: row[22],
      AccountNumber: row[23],	CostCenterId: row[24],	DetailSerialNo: row[25],
      FeesId: row[26],	LocalAuthorityId: row[27],	StatusMessage: row[28],	Year: row[29],
      Month: row[30],	CashierId: row[31],	Owner: row[32],	SentToLaifoms: row[33],
      LaifomsBillNo: row[34],	LastReceiptAction: row[35],	LaifomsReceiptNo: row[36],
      DateCreated: row[37],	LastModified: row[38]]}
    until records.count < 1 do
      r = records.shift(1000)
      ParkingTransaction.import r
    end
  end

end
