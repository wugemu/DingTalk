.class public Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;
.super Ljava/lang/Object;
.source "MonitorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/monitor/Monitor;


# static fields
.field public static final NULL_PARAM:Ljava/lang/String; = "null"


# instance fields
.field private mAlarmMonitor:Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

.field private mApplicationWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

.field private mWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mAlarmMonitor:Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

    .line 22
    new-instance v0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    .line 23
    new-instance v0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mApplicationWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    .line 24
    return-void
.end method


# virtual methods
.method public addSystemResListener(ILcom/alibaba/doraemon/health/monitor/SystemResListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .prologue
    .line 28
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mAlarmMonitor:Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->addSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 30
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->addSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mApplicationWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->addSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 34
    :cond_1
    return-void
.end method

.method public clearSystemResStatistics(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 57
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mAlarmMonitor:Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->clearStatistics()V

    .line 59
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->clearStatistics()V

    .line 61
    :cond_1
    return-void
.end method

.method public getSystemResStatistics(I)Lcom/alibaba/doraemon/health/monitor/CallStatistics;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 48
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mAlarmMonitor:Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->getStatistics()Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->getStatistics()Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSystemResListener(ILcom/alibaba/doraemon/health/monitor/SystemResListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .prologue
    .line 38
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mAlarmMonitor:Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->removeSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 40
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->removeSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;->mApplicationWacklockMonitor:Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->removeSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V

    .line 44
    :cond_1
    return-void
.end method
