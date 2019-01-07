.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;
.super Ljava/lang/Object;
.source "UcServiceWorkerSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->onReceiveValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v2, "H5UcService::UcServiceWorkerSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logServiceWorkerOnReceiveValue "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 64
    .local v0, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    if-eqz v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->b:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5UcService::UcServiceWorkerSetup"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
