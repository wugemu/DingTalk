.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$2;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$2;->a:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$2;->a:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$100(Landroid/content/Context;)V

    .line 344
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->useNewInitTiming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initNetworkConfig()V

    .line 346
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerCallback()V

    .line 347
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerController()V

    .line 348
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->clearUcHttpCache()V

    .line 350
    :cond_0
    return-void
.end method
