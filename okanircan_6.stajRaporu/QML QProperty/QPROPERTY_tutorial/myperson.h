#ifndef MYPERSON_H
#define MYPERSON_H

#include <QObject>

class MyPerson : public QObject
{
public:
    explicit MyPerson(QObject *parent = nullptr);

signals:

};

#endif // MYPERSON_H
