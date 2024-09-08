#include "ApplicationClass.h"

ApplicationClass::ApplicationClass(QObject *parent)
    : QObject{parent}
{

    registerQML();
    m_timeSystemTimer=new QTimer(this);
    m_timeSystemTimer->setInterval(500);
    m_timeSystemTimer->setSingleShot(true);
    connect(m_timeSystemTimer,&QTimer::timeout,this,&ApplicationClass::timeSystemTimerTimeOut);
    timeSystemTimerTimeOut();
}

void ApplicationClass::registerQML()
{
    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/Style.qml")), "SmartHome", 1, 0, "Style");
}

QDateTime ApplicationClass::timeSystem() const
{
    return m_timeSystem;
}

void ApplicationClass::setTimeSystem(const QDateTime &newTimeSystem)
{
    if (m_timeSystem == newTimeSystem)
        return;
    m_timeSystem = newTimeSystem;
    emit timeSystemChanged();
}

void ApplicationClass::timeSystemTimerTimeOut()
{
    QDateTime dateTime;
    setTimeSystem(dateTime);
   // qDebug()<<"start timer";
    m_timeSystemTimer->start();
}
