.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MiniAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    if-nez p2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string/jumbo v1, "mini_app_launch_broadcast"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    .local v0, "hasMiniAppLaunched":Z
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;Z)V

    goto :goto_0
.end method
