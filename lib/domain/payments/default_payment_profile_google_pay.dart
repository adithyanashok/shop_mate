const String defaultGooglePay = '''{
    "provider": "google_pay",
    "data": {
        "environment": "TEST",
        "apiVersion": 2,
        "apiVersionMinor": 0,
        "allowedPaymentMethods": [
            {
                "type": "CARD",
                "tokenizationSpecification": {
                    "type": "PAYMENT_GATEWAY",
                    "parameters": {
                        "gateway": "example",
                        "gatewayMerchantId": "gatewayMerchantId"
                    }
                },
                "parameters": {
                    "allowedCardNetworks": [
                        "VISA",
                        "MASTERCARD"
                    ],
                    "allowedAuthMethods": [
                        "PAN_ONLY",
                        "CRYPTOGRAM_3DS"
                    ],
                    "billingAddressRequired": true,
                    "billingAddressParameters": {
                        "format": "FULL",
                        "phoneNumberRequired": true
                    }
                }
            }
        ],
        "merchantInfo": {
            "merchantId": "BCR2DN4TZ3RZXMIS",
            "merchantName": "Adithyan Ashok"
        },
        "transactionInfo": {
            "countryCode": "US",
            "currencyCode": "USD"
        }
    }
  }''';
