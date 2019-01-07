.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$2;
.super Landroid/content/BroadcastReceiver;
.source "FCLifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->registerLoginStateReceiver()V
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
    .line 110
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 113
    const-string/jumbo v0, "com.workapp.user.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onLogin"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onLogin degraded!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetch()V

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v0, "com.workapp.user.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "onLogout"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->clear()V

    goto :goto_0
.end method
