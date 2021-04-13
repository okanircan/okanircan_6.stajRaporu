#include "datastore.h"

datastore::datastore(QObject *parent) : QObject(parent), count(0),msg("0 Hits")
{

}

void datastore::setMessage(QString str)
{
    msg = str;
    emit messageChanged();
}

int datastore::qInvokeExample(QString str)
{
    qDebug(str.toLatin1());
    return count;
}

void datastore::callMeFromQml()
{
    qDebug("Inside callMeFromQml()");
    count++;
    setMessage(QString("%1 hits").arg(count));
}
