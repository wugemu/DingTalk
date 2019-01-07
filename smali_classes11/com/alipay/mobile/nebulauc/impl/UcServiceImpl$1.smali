.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UcServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->registerUcInitSuccessReceiver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;->b:Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;->a:Z

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
    .line 88
    :try_start_0
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "UcInitSuccessReceiver onReceive uc init success event"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Liog;->a:Z

    .line 90
    :cond_0
    const-string/jumbo v1, "H5UcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UcInitSuccessReceiver cancel! ucReady = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Liog;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "thr":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "UcInitSuccessReceiver reInit uc error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
