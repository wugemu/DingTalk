.class public Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;
.super Ljava/lang/Object;
.source "IActivityManagerMaid.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IActivityManagerMaind"

.field private static sArgs_mCurIntent:Ljava/lang/reflect/Field;

.field private static sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

.field private static sReceiverDispatcher_mActivityThread:Ljava/lang/reflect/Field;


# instance fields
.field private mDelegate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->mDelegate:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sArgs_mCurIntent:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .prologue
    .line 25
    sput-object p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sArgs_mCurIntent:Ljava/lang/reflect/Field;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    monitor-enter p0

    .line 43
    :try_start_0
    const-string/jumbo v7, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    monitor-exit p0

    .line 91
    :goto_1
    return-object v5

    :cond_0
    move v5, v6

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->mDelegate:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 48
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 50
    :cond_2
    :try_start_1
    const-string/jumbo v5, "broadcastIntent"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 51
    const/4 v5, 0x1

    aget-object v5, p3, v5

    instance-of v5, v5, Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 52
    const-string/jumbo v5, "IActivityManagerMaind"

    const-string/jumbo v6, "args[1] is a intent !"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v5, 0x1

    aget-object v3, p3, v5

    check-cast v3, Landroid/content/Intent;

    .line 56
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceId;->getThreadTraceId()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "traceId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 58
    const-string/jumbo v5, "com.alibaba.doraemon.TRACEID"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "traceId":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v5, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    monitor-exit p0

    goto :goto_1

    .line 61
    :cond_4
    const-string/jumbo v5, "IActivityManagerMaind"

    const-string/jumbo v6, "args[1] is not a intent !"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 63
    :cond_5
    const-string/jumbo v5, "registerReceiver"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    :try_start_2
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

    if-nez v5, :cond_6

    .line 66
    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "mDispatcher"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 67
    sput-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    :cond_6
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sReceiverDispatcher_mActivityThread:Ljava/lang/reflect/Field;

    if-nez v5, :cond_7

    .line 71
    const/4 v5, 0x2

    aget-object v5, p3, v5

    if-eqz v5, :cond_7

    .line 72
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, "ReceiverDispatcherClz":Ljava/lang/Class;
    const-string/jumbo v5, "mActivityThread"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 74
    sput-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sReceiverDispatcher_mActivityThread:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    .end local v0    # "ReceiverDispatcherClz":Ljava/lang/Class;
    :cond_7
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sReceiverDispatcher_mActivityThread:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    .line 79
    const/4 v5, 0x2

    aget-object v5, p3, v5

    if-eqz v5, :cond_3

    .line 80
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sInnerReceiver_mDispatcher:Ljava/lang/reflect/Field;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "activityThread":Ljava/lang/Object;
    sget-object v6, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sReceiverDispatcher_mActivityThread:Ljava/lang/reflect/Field;

    new-instance v7, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;

    sget-object v5, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;->sReceiverDispatcher_mActivityThread:Ljava/lang/reflect/Field;

    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v5, v8}, Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid$HandlerReceiverProxy;-><init>(Lcom/alibaba/doraemon/impl/trace/hook/IActivityManagerMaid;Landroid/os/Handler;Landroid/os/Looper;)V

    .line 81
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 85
    .end local v1    # "activityThread":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "IActivityManagerMaid"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "exception==>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
