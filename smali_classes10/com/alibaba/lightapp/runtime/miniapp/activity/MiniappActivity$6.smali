.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;
.super Lcmi;
.source "MiniappActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 492
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 472
    .line 1475
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_0

    .line 1480
    const-string/jumbo v1, "mini_app_launch_broadcast_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1482
    if-eqz v0, :cond_0

    .line 1483
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miniapp.launch.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    const-string/jumbo v1, "mini_app_launch_broadcast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1485
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$6;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 472
    :cond_0
    return-void
.end method
