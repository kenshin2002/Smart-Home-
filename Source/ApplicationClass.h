#ifndef APPLICATIONCLASS_H
#define APPLICATIONCLASS_H

#include <QObject>
#include <QUrl>
#include <QQmlEngine>
#include <QTimer>
#include <QDateTime>
class ApplicationClass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QDateTime timeSystem READ timeSystem WRITE setTimeSystem NOTIFY timeSystemChanged FINAL)
public:
    explicit ApplicationClass(QObject *parent = nullptr);
    Q_INVOKABLE QDateTime timeSystem() const;
    void setTimeSystem(const QDateTime &newTimeSystem);
    void timeSystemTimerTimeOut();

private:
    void registerQML();
    QTimer*m_timeSystemTimer;
    QDateTime m_timeSystem;

signals:
    void timeSystemChanged();
};

#endif // APPLICATIONCLASS_H
