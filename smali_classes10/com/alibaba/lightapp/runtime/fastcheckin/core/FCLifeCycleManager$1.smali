.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;
.super Ljava/lang/Object;
.source "FCLifeCycleManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->registerAppStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 70
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onEnterBackground"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->access$002(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;Z)Z

    .line 73
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onEnterBackground returnFromCameraActivity2 == true"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->stop()V

    .line 76
    return-void
.end method

.method public final onEnterForeground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onEnterForeground"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->access$002(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;Z)Z

    .line 83
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onEnterForeground ignored for returnFromCameraActivity2"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onEnterForeground degraded"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V

    .line 98
    :cond_2
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetch()V

    goto :goto_0
.end method
