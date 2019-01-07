.class public Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;
.super Ljava/lang/Object;
.source "CrashMonitorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/crash/CrashMonitor;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final mCrashHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/crash/CrashHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mInited:Z

    .line 21
    return-void
.end method


# virtual methods
.method public registerCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/alibaba/doraemon/crash/CrashHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v1, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    monitor-enter v1

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mInited:Z

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mDefultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mInited:Z

    .line 34
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    sget-object v2, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    monitor-enter v2

    .line 50
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/crash/CrashHandler;

    .line 51
    .local v0, "handler":Lcom/alibaba/doraemon/crash/CrashHandler;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/crash/CrashHandler;->onCaughtCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 57
    .end local v0    # "handler":Lcom/alibaba/doraemon/crash/CrashHandler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mDefultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mDefultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 57
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public unregisterCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/alibaba/doraemon/crash/CrashHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v1, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;->mCrashHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
