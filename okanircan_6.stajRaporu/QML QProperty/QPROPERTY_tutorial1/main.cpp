#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include "myperson.h"

int main(int argc, char *argv[])
{

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QQuickStyle::setStyle("Material");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QObjectList people;
    people.append(new MyPerson("Okan",23));
    people.append(new MyPerson("Keso",24));
    people.append(new MyPerson("Ömer",26));
    people.append(new MyPerson("Mehmet",48));
    people.append(new MyPerson("Onur",30));
    people.append(new MyPerson("Eda",28));
    people.append(new MyPerson("Sema",33));

    engine.rootContext()->setContextProperty("people",QVariant::fromValue(people));

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if(engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
