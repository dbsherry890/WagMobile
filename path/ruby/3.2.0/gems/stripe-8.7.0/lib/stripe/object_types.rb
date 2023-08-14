# File generated from our OpenAPI spec
# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

module Stripe
  module ObjectTypes
    def self.object_names_to_classes
      {
        # data structures
        ListObject::OBJECT_NAME => ListObject,
        SearchResultObject::OBJECT_NAME => SearchResultObject,

        # business objects
        Account::OBJECT_NAME => Account,
        AccountLink::OBJECT_NAME => AccountLink,
        ApplePayDomain::OBJECT_NAME => ApplePayDomain,
        ApplicationFee::OBJECT_NAME => ApplicationFee,
        ApplicationFeeRefund::OBJECT_NAME => ApplicationFeeRefund,
        Apps::Secret::OBJECT_NAME => Apps::Secret,
        Balance::OBJECT_NAME => Balance,
        BalanceTransaction::OBJECT_NAME => BalanceTransaction,
        BankAccount::OBJECT_NAME => BankAccount,
        BillingPortal::Configuration::OBJECT_NAME => BillingPortal::Configuration,
        BillingPortal::Session::OBJECT_NAME => BillingPortal::Session,
        Capability::OBJECT_NAME => Capability,
        Card::OBJECT_NAME => Card,
        CashBalance::OBJECT_NAME => CashBalance,
        Charge::OBJECT_NAME => Charge,
        Checkout::Session::OBJECT_NAME => Checkout::Session,
        CountrySpec::OBJECT_NAME => CountrySpec,
        Coupon::OBJECT_NAME => Coupon,
        CreditNote::OBJECT_NAME => CreditNote,
        CreditNoteLineItem::OBJECT_NAME => CreditNoteLineItem,
        Customer::OBJECT_NAME => Customer,
        CustomerBalanceTransaction::OBJECT_NAME => CustomerBalanceTransaction,
        CustomerCashBalanceTransaction::OBJECT_NAME => CustomerCashBalanceTransaction,
        Discount::OBJECT_NAME => Discount,
        Dispute::OBJECT_NAME => Dispute,
        EphemeralKey::OBJECT_NAME => EphemeralKey,
        Event::OBJECT_NAME => Event,
        ExchangeRate::OBJECT_NAME => ExchangeRate,
        File::OBJECT_NAME => File,
        File::OBJECT_NAME_ALT => File,
        FileLink::OBJECT_NAME => FileLink,
        FinancialConnections::Account::OBJECT_NAME => FinancialConnections::Account,
        FinancialConnections::AccountOwner::OBJECT_NAME => FinancialConnections::AccountOwner,
        FinancialConnections::AccountOwnership::OBJECT_NAME =>
        FinancialConnections::AccountOwnership,
        FinancialConnections::Session::OBJECT_NAME => FinancialConnections::Session,
        FundingInstructions::OBJECT_NAME => FundingInstructions,
        Identity::VerificationReport::OBJECT_NAME => Identity::VerificationReport,
        Identity::VerificationSession::OBJECT_NAME => Identity::VerificationSession,
        Invoice::OBJECT_NAME => Invoice,
        InvoiceItem::OBJECT_NAME => InvoiceItem,
        InvoiceLineItem::OBJECT_NAME => InvoiceLineItem,
        Issuing::Authorization::OBJECT_NAME => Issuing::Authorization,
        Issuing::Card::OBJECT_NAME => Issuing::Card,
        Issuing::Cardholder::OBJECT_NAME => Issuing::Cardholder,
        Issuing::Dispute::OBJECT_NAME => Issuing::Dispute,
        Issuing::Transaction::OBJECT_NAME => Issuing::Transaction,
        LineItem::OBJECT_NAME => LineItem,
        LoginLink::OBJECT_NAME => LoginLink,
        Mandate::OBJECT_NAME => Mandate,
        PaymentIntent::OBJECT_NAME => PaymentIntent,
        PaymentLink::OBJECT_NAME => PaymentLink,
        PaymentMethod::OBJECT_NAME => PaymentMethod,
        Payout::OBJECT_NAME => Payout,
        Person::OBJECT_NAME => Person,
        Plan::OBJECT_NAME => Plan,
        Price::OBJECT_NAME => Price,
        Product::OBJECT_NAME => Product,
        PromotionCode::OBJECT_NAME => PromotionCode,
        Quote::OBJECT_NAME => Quote,
        Radar::EarlyFraudWarning::OBJECT_NAME => Radar::EarlyFraudWarning,
        Radar::ValueList::OBJECT_NAME => Radar::ValueList,
        Radar::ValueListItem::OBJECT_NAME => Radar::ValueListItem,
        Refund::OBJECT_NAME => Refund,
        Reporting::ReportRun::OBJECT_NAME => Reporting::ReportRun,
        Reporting::ReportType::OBJECT_NAME => Reporting::ReportType,
        Reversal::OBJECT_NAME => Reversal,
        Review::OBJECT_NAME => Review,
        SetupAttempt::OBJECT_NAME => SetupAttempt,
        SetupIntent::OBJECT_NAME => SetupIntent,
        ShippingRate::OBJECT_NAME => ShippingRate,
        Sigma::ScheduledQueryRun::OBJECT_NAME => Sigma::ScheduledQueryRun,
        Source::OBJECT_NAME => Source,
        SourceTransaction::OBJECT_NAME => SourceTransaction,
        Subscription::OBJECT_NAME => Subscription,
        SubscriptionItem::OBJECT_NAME => SubscriptionItem,
        SubscriptionSchedule::OBJECT_NAME => SubscriptionSchedule,
        Tax::Calculation::OBJECT_NAME => Tax::Calculation,
        Tax::CalculationLineItem::OBJECT_NAME => Tax::CalculationLineItem,
        Tax::Settings::OBJECT_NAME => Tax::Settings,
        Tax::Transaction::OBJECT_NAME => Tax::Transaction,
        Tax::TransactionLineItem::OBJECT_NAME => Tax::TransactionLineItem,
        TaxCode::OBJECT_NAME => TaxCode,
        TaxId::OBJECT_NAME => TaxId,
        TaxRate::OBJECT_NAME => TaxRate,
        Terminal::Configuration::OBJECT_NAME => Terminal::Configuration,
        Terminal::ConnectionToken::OBJECT_NAME => Terminal::ConnectionToken,
        Terminal::Location::OBJECT_NAME => Terminal::Location,
        Terminal::Reader::OBJECT_NAME => Terminal::Reader,
        TestHelpers::TestClock::OBJECT_NAME => TestHelpers::TestClock,
        Token::OBJECT_NAME => Token,
        Topup::OBJECT_NAME => Topup,
        Transfer::OBJECT_NAME => Transfer,
        Treasury::CreditReversal::OBJECT_NAME => Treasury::CreditReversal,
        Treasury::DebitReversal::OBJECT_NAME => Treasury::DebitReversal,
        Treasury::FinancialAccount::OBJECT_NAME => Treasury::FinancialAccount,
        Treasury::FinancialAccountFeatures::OBJECT_NAME => Treasury::FinancialAccountFeatures,
        Treasury::InboundTransfer::OBJECT_NAME => Treasury::InboundTransfer,
        Treasury::OutboundPayment::OBJECT_NAME => Treasury::OutboundPayment,
        Treasury::OutboundTransfer::OBJECT_NAME => Treasury::OutboundTransfer,
        Treasury::ReceivedCredit::OBJECT_NAME => Treasury::ReceivedCredit,
        Treasury::ReceivedDebit::OBJECT_NAME => Treasury::ReceivedDebit,
        Treasury::Transaction::OBJECT_NAME => Treasury::Transaction,
        Treasury::TransactionEntry::OBJECT_NAME => Treasury::TransactionEntry,
        UsageRecord::OBJECT_NAME => UsageRecord,
        UsageRecordSummary::OBJECT_NAME => UsageRecordSummary,
        WebhookEndpoint::OBJECT_NAME => WebhookEndpoint,
      }
    end
  end
end

# rubocop:enable Metrics/MethodLength
