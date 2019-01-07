.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$4;
.super Landroid/content/BroadcastReceiver;
.source "H5SystemInfoPlugin.java"


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
    .line 356
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$4;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 363
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 366
    .local v1, "scale":I
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$4;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$1002(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;I)I

    .line 367
    const-string/jumbo v2, "H5SystemInfoPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ACTION_BATTERY_CHANGED..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$4;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$1000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v0    # "level":I
    .end local v1    # "scale":I
    :cond_0
    return-void
.end method
