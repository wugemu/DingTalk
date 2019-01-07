.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;
.super Ljava/lang/Object;
.source "ChooseImagePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;


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
    .line 414
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Z)Z

    .line 419
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhcs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Liny;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;Ljava/lang/String;)V

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    :cond_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Liny;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;Ljava/lang/String;)V

    goto :goto_0
.end method
