.class Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeexButler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/weex/WeexButler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebugRefreshReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 486
    const-string/jumbo v0, "DEBUG_INSTANCE_REFRESH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$800(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$900(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$DebugRefreshReceiver;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$800(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->loadUrl(Ljava/lang/String;)V

    .line 492
    :cond_0
    return-void
.end method
