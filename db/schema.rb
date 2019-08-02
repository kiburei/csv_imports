# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_02_165857) do

  create_table "parking_transactions", force: :cascade do |t|
    t.string "RevenueStreamCode"
    t.string "TransactionBy"
    t.string "BillNo"
    t.string "ReceiptNo"
    t.string "StatusCode"
    t.string "TransactionTypeCode"
    t.string "TransactionType"
    t.string "BillAmount"
    t.decimal "AmountToPay", precision: 18, scale: 0
    t.string "WardId"
    t.string "TransactionCode"
    t.string "PrivatePSV"
    t.string "Identifier"
    t.string "Identifier2"
    t.string "ClientName"
    t.string "ChannelId"
    t.string "ChannelFileNumber"
    t.string "BriefDescription"
    t.string "IncomeTypeId"
    t.string "EntryVia"
    t.string "RequestBy"
    t.string "PaymentMethod"
    t.string "BillType"
    t.string "AccountNumber"
    t.string "CostCenterId"
    t.string "DetailSerialNo"
    t.string "FeesId"
    t.string "LocalAuthorityId"
    t.string "StatusMessage"
    t.string "Year"
    t.string "Month"
    t.string "CashierId"
    t.string "Owner"
    t.string "SentToLaifoms"
    t.string "LaifomsBillNo"
    t.string "LastReceiptAction"
    t.string "LaifomsReceiptNo"
    t.date "DateCreated"
    t.date "LastModified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
