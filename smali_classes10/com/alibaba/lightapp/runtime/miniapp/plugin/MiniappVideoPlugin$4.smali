.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;
.super Landroid/content/BroadcastReceiver;
.source "MiniappVideoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liny;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->a:Liny;

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
    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const-string/jumbo v1, "MiniappVideoPlugin"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 365
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->a:Liny;

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    .line 368
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;)V

    goto :goto_0
.end method
