.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;


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
    .line 289
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->a:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;)V

    .line 295
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->a:Liny;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string/jumbo v0, "MiniappVideoPlugin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
