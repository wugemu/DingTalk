.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CommonWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

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
    .line 201
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string/jumbo v1, "finish_activity"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v1, "auto_check_in"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 211
    .local v0, "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v1, "autoCheckIn"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
