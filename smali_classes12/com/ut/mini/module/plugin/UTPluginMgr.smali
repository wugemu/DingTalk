.class public Lcom/ut/mini/module/plugin/UTPluginMgr;
.super Ljava/lang/Object;
.source "UTPluginMgr.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# static fields
.field private static s_instance:Lcom/ut/mini/module/plugin/UTPluginMgr;


# instance fields
.field private mPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ut/mini/module/plugin/UTPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/ut/mini/module/plugin/UTPluginMgr;

    invoke-direct {v0}, Lcom/ut/mini/module/plugin/UTPluginMgr;-><init>()V

    sput-object v0, Lcom/ut/mini/module/plugin/UTPluginMgr;->s_instance:Lcom/ut/mini/module/plugin/UTPluginMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mPluginList:Ljava/util/List;

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 21
    invoke-static {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 23
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/ut/mini/module/plugin/UTPluginMgr;->s_instance:Lcom/ut/mini/module/plugin/UTPluginMgr;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized forEachPlugin(Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;)V
    .locals 3
    .param p1, "aForEachDelegate"    # Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    monitor-enter p0

    if-nez p1, :cond_1

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    .line 33
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mPluginList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/plugin/UTPlugin;

    .line 34
    .local v1, "lPlugin":Lcom/ut/mini/module/plugin/UTPlugin;
    invoke-interface {p1, v1}, Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;->onPluginForEach(Lcom/ut/mini/module/plugin/UTPlugin;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lPlugin":Lcom/ut/mini/module/plugin/UTPlugin;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    return-void
.end method

.method public onSwitchBackground()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onSwitchForeground()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public declared-synchronized registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mPluginList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mPluginList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mPluginList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
