.class public Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;
.super Ljava/lang/Object;
.source "WacklockMonitor.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDelegate:Ljava/lang/Object;

.field private mWacklockListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/health/monitor/SystemResListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    invoke-direct {v0}, Lcom/alibaba/doraemon/health/monitor/CallStatistics;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v3, "WacklockMonitor"

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->TAG:Ljava/lang/String;

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mWacklockListener:Ljava/util/List;

    .line 33
    :try_start_0
    const-string/jumbo v3, "android.os.IPowerManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    .local v0, "iPowerManagerClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Landroid/os/PowerManager;

    const-string/jumbo v4, "mService"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 35
    .local v2, "powerManager_mService":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 38
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mDelegate:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v3, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    const/4 v4, 0x4

    iput v4, v3, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mType:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v0    # "iPowerManagerClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v2    # "powerManager_mService":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wacklock monitor start failed, because IPowerManager class is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :catch_1
    move-exception v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wacklock monitor start failed, because mService filed is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :catch_2
    move-exception v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wacklock monitor start failed, because hooking IPowerManager service is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mWacklockListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public clearStatistics()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    iget-object v0, v0, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    :cond_0
    return-void
.end method

.method public getStatistics()Lcom/alibaba/doraemon/health/monitor/CallStatistics;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    :try_start_0
    const-string/jumbo v8, "acquireWakeLock"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "releaseWakeLock"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 59
    const/4 v7, 0x0

    .line 60
    .local v7, "stackElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 61
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .line 62
    .local v0, "callMethod":Ljava/lang/String;
    array-length v8, v2

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 64
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 65
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1
    sget-object v8, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    if-eqz v8, :cond_6

    .line 71
    new-instance v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;

    invoke-direct {v6}, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;-><init>()V

    .line 72
    .local v6, "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mCallTime:J

    .line 73
    iput-object v0, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mMethod:Ljava/lang/String;

    .line 74
    if-eqz v7, :cond_2

    .line 75
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

    .line 76
    :cond_2
    if-eqz p3, :cond_5

    array-length v8, p3

    if-lez v8, :cond_5

    .line 77
    array-length v8, p3

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mParams:[Ljava/lang/String;

    .line 78
    const/4 v3, 0x0

    :goto_1
    array-length v8, p3

    if-ge v3, v8, :cond_5

    .line 79
    aget-object v8, p3, v3

    if-eqz v8, :cond_4

    .line 80
    iget-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mParams:[Ljava/lang/String;

    aget-object v9, p3, v3

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 78
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    .end local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :cond_3
    aget-object v7, v2, v3

    .line 62
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 82
    .restart local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :cond_4
    iget-object v8, v6, Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;->mParams:[Ljava/lang/String;

    const-string/jumbo v9, "null"

    aput-object v9, v8, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 101
    .end local v0    # "callMethod":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    .end local v7    # "stackElement":Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v5

    .line 85
    .restart local v0    # "callMethod":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "elements":[Ljava/lang/StackTraceElement;
    .restart local v3    # "i":I
    .restart local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    .restart local v7    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_5
    :try_start_1
    sget-object v8, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mCallStatistics:Lcom/alibaba/doraemon/health/monitor/CallStatistics;

    iget-object v8, v8, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v6    # "record":Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    :goto_4
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mWacklockListener:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .line 91
    .local v4, "listener":Lcom/alibaba/doraemon/health/monitor/SystemResListener;
    const/4 v9, 0x4

    invoke-interface {v4, v9, v0, v7, p3}, Lcom/alibaba/doraemon/health/monitor/SystemResListener;->onSystemResCalled(ILjava/lang/String;Ljava/lang/StackTraceElement;[Ljava/lang/Object;)V

    goto :goto_5

    .line 87
    .end local v4    # "listener":Lcom/alibaba/doraemon/health/monitor/SystemResListener;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "wacklock monitor\'s callstatistics is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 98
    .end local v0    # "callMethod":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v7    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_7
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v8, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 100
    .local v5, "obj":Ljava/lang/Object;
    goto :goto_3
.end method

.method public removeSystemResListener(Lcom/alibaba/doraemon/health/monitor/SystemResListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/health/monitor/SystemResListener;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/WacklockMonitor;->mWacklockListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
