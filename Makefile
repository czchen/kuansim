DATADIR="test/data"
TARGET=http://127.0.0.1:3000/collections
HYFAKEDATA=https://raw.github.com/hychen/mockdata_generator/master/data/kuansim

CURL=curl -i -H "Content-Type: application/json" 
POST=${CURL} -X POST
HASID=-H "x-pgrest-create-identity-key: yes"

USERJSON=${HYFAKEDATA}/users.json
NEWSJSON=${HYFAKEDATA}/news.json

import ::
	${POST} ${HASID} -d @${DATADIR}/users.json ${TARGET}/users
#	${POST} -d @${DATEDIR}/news.json ${TARGET} ${TARGET}/news

checkout ::
	-mkdir -p ${DATADIR}
	-wget ${USERJSON}  -O ${DATADIR}/users.json
#	-wget ${NEWSJSON}  -O ${DATADIR}/news.json
