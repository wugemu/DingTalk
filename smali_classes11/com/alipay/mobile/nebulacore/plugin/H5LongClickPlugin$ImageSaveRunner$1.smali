.class Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;
.super Ljava/lang/Object;
.source "H5LongClickPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

.field final synthetic val$succeed:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->val$succeed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->val$succeed:Z

    if-eqz v1, :cond_2

    .line 258
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_save_image_to:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->toastPath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->bridgeContext:Liny;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->bridgeContext:Liny;

    invoke-interface {v1}, Liny;->sendSuccess()V

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-boolean v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->cusHandleResult:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "no"

    const-string/jumbo v2, "h5_cusHandleResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    const-string/jumbo v1, "H5LongClickPlugin"

    const-string/jumbo v2, "cusHandleResult true not show toast"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_save_image_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .restart local v0    # "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->bridgeContext:Liny;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->bridgeContext:Liny;

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "17"

    invoke-interface {v1, v2, v3}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
