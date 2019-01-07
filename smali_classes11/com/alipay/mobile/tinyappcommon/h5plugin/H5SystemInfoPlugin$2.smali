.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;
.super Ljava/lang/Object;
.source "H5SystemInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$800(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    iget-object v2, v2, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$802(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5SystemInfoPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterBroadcastReceiver...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
