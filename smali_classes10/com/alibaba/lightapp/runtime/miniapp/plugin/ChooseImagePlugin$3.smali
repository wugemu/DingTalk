.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;
.super Landroid/content/BroadcastReceiver;
.source "ChooseImagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "ChooseImagePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "img onReceive "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Z)Z

    .line 442
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Liny;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;Landroid/content/Intent;)V

    .line 450
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;I)I

    .line 451
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;)Liny;

    .line 452
    return-void

    .line 444
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Liny;

    move-result-object v2

    const/16 v3, 0xb

    const-string/jumbo v4, "onCancel"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;ILjava/lang/String;)V

    goto :goto_0
.end method
