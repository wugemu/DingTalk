.class public Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;
.super Ljava/lang/Object;
.source "EventButlerImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/eventbus/EventButler;


# static fields
.field public static final EVENT_AFTER:I = 0x3

.field public static final EVENT_BEFORE:I = 0x2

.field public static final EVENT_CLEAR:I = 0x4

.field public static final EVENT_START:I = 0x1

.field private static sEventMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->sEventMonitors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static notifyThreadMonitor(Ljava/lang/Object;I)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    .line 80
    sget-object v2, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->sEventMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 81
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 82
    sget-object v2, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->sEventMonitors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;

    .line 84
    .local v1, "monitor":Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 85
    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;->onBeforeEventExecute(Ljava/lang/Object;)V

    .line 81
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 87
    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;->onAfterEventExecute(Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 89
    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;->onEventStart(Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 91
    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;->onEventClear(Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    .end local v1    # "monitor":Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;
    :cond_4
    return-void
.end method


# virtual methods
.method public newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .locals 5
    .param p1, "appCallback"    # Ljava/lang/Object;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .local p2, "interface_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;-><init>(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 39
    .local v0, "callbackMaid":Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "t":Ljava/lang/Object;, "TT;"
    new-instance v2, Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/eventbus/CancelableCallback;)V

    return-object v2
.end method

.method public newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .locals 5
    .param p1, "appCallback"    # Ljava/lang/Object;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    .local p2, "interface_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;-><init>(Ljava/lang/Object;Landroid/support/v4/app/Fragment;)V

    .line 51
    .local v0, "callbackMaid":Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "t":Ljava/lang/Object;, "TT;"
    new-instance v2, Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/eventbus/CancelableCallback;)V

    return-object v2
.end method

.method public newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p1, "appCallback"    # Ljava/lang/Object;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    .local p2, "interface_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance v2, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;

    invoke-direct {v2, p1, p3}, Lcom/alibaba/doraemon/impl/eventbus/CallbackMaid;-><init>(Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;
    .locals 3
    .param p1, "appCallback"    # Ljava/lang/Object;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v4/app/Fragment;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    .local p2, "interface_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance v2, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    invoke-direct {v2, p1, p3}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;-><init>(Ljava/lang/Object;Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newHandler(Landroid/os/Handler$Callback;Landroid/app/Activity;Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "appCallback"    # Landroid/os/Handler$Callback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 66
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;

    invoke-direct {v0, p2, p1, p3}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;-><init>(Landroid/app/Activity;Landroid/os/Handler$Callback;Landroid/os/Looper;)V

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/eventbus/HandlerMaid;->toHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public registerEventMonitor(Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;)V
    .locals 1
    .param p1, "monitorTask"    # Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->sEventMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "appReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;-><init>(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->start()V

    .line 63
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "appReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;-><init>(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;->start()V

    .line 59
    return-void
.end method

.method public unregisterEventMonitor(Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;)V
    .locals 1
    .param p1, "monitorTask"    # Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;

    .prologue
    .line 76
    sget-object v0, Lcom/alibaba/doraemon/impl/eventbus/EventButlerImpl;->sEventMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
