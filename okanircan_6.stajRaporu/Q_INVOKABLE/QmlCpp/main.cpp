#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "datastore.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext* context = engine.rootContext();
    datastore dt;
    context->setContextProperty("datastore",&dt);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}
