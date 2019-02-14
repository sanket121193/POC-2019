echo "POST invoke chaincode on peers of Org1, Org2, Org3 and Org4"
echo
TRX_ID=$(curl -s -X POST \
  http://localhost:4000/channels/mychannel/chaincodes/mycc \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTAwOTM5NzgsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1NTAwNTc5Nzh9.Y4aRlcrWqPMbG5KLOlggZu3tXm-yhocVcjyqUkgVW2U"\
  -H "content-type: application/json" \
  -d '{
	"peers": ["peer0.org1.rolex.com","peer0.org2.dealer.com", "peer0.org3.service.com"],
	"fcn":	"addProduct",
	"args":	["N1122","B3459","M4576","Rolex Day-Date","23-12-2018","C87565", "$32800", "Self-winding Chronometer"]
}')
echo "Transaction ID is $TRX_ID"
echo
echo


