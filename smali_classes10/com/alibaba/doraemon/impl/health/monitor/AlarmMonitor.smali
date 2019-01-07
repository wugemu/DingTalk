.class public Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;
.super Ljava/lang/Object;
.source "AlarmMonitor.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarmListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/health/monitor/SystemResListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

.field private mDelegate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v3, "AlarmMonitor"

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->TAG:Ljava/lang/String;

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mAlarmListener:Ljava/util/List;

    .line 35
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 36
    .local v2, "iAlarmManagerClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Landroid/app/AlarmManager;

    const-string/jumbo v4, "mService"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 37
    .local v1, "alarmManager_mService":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    const-string/jumbo v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 39
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mDelegate:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    new-instance v3, Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    invoke-direct {v3}, Lcom/alibaba/doraemon/health/monitor/CallStatistics;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    .line 43
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    const/4 v4, 0x2

    iput v4, v3, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mType:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "alarmManager_mService":Ljava/lang/reflect/Field;
    .end local v2    # "iAlarmManagerClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "alarm monitor start failed, because IAlarmManager class is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :catch_1
    move-exception v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "alarm monitor start failed, because mService filed is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :catch_2
    move-exception v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "alarm monitor start failed, because hooking IAlarmManager service is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mAlarmListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public clearStatistics()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    iget-object v0, v0, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    :cond_0
    return-void
.end method

.method public getStatistics()Lcom/alibaba/doraemon/health/monitor/CallStatistics;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    const-string/jumbo v8, "set"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "remove"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "setInexactRepeating"

    .line 57
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "setRepeating"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 61
    const/4 v7, 0x0

    .line 62
    .local v7, "stackElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 63
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .line 64
    .local v0, "callMethod":Ljava/lang/String;
    array-length v8, v2

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 66
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Landroid/app/AlarmManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 67
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    if-eqz v8, :cond_6

    .line 73
    new-instance v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;

    invoke-direct {v6}, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;-><init>()V

    .line 74
    .local v6, "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mCallTime:J

    .line 75
    iput-object v0, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mMethod:Ljava/lang/String;

    .line 76
    if-eqz v7, :cond_2

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mCaller:Ljava/lang/String;

    .line 78
    :cond_2
    if-eqz p3, :cond_5

    array-length v8, p3

    if-lez v8, :cond_5

    .line 79
    array-length v8, p3

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mParams:[Ljava/lang/String;

    .line 80
    const/4 v4, 0x0

    :goto_1
    array-length v8, p3

    if-ge v4, v8, :cond_5

    .line 81
    aget-object v8, p3, v4

    if-eqz v8, :cond_4

    .line 82
    iget-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mParams:[Ljava/lang/String;

    aget-object v9, p3, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 80
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 70
    .end local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :cond_3
    aget-object v7, v2, v4

    .line 64
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 85
    .restart local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :cond_4
    iget-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mParams:[Ljava/lang/String;

    const-string/jumbo v9, "null"

    aput-object v9, v8, v4

    goto :goto_2

    .line 90
    :cond_5
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    iget-object v8, v8, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :goto_3
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mAlarmListener:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .line 100
    .local v5, "listener":Lcom/alibaba/doraemon/health/monitor/SystemResListener;
    const/4 v9, 0x2

    invoke-interface {v5, v9, v0, v7, p3}, Lcom/alibaba/doraemon/health/monitor/SystemResListener;->onSystemResCalled(ILjava/lang/String;Ljava/lang/StackTraceElement;[Ljava/lang/Object;)V

    goto :goto_4

    .line 91
    .end local v5    # "listener":Lcom/alibaba/doraemon/health/monitor/SystemResListener;
    .restart local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v3    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "alarm monitor\'s callstatistics is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 104
    .end local v0    # "callMethod":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v4    # "i":I
    .end local v7    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_7
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v8, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method

.method public removeSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/AlarmMonitor;->mAlarmListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method
