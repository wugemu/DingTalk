.class final Lhmt$1$1;
.super Ljava/lang/Object;
.source "MiniAppUcServiceWorkerSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmt$1;->onReceiveValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lhmt$1;


# direct methods
.method constructor <init>(Lhmt$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lhmt$1;

    .prologue
    .line 52
    iput-object p1, p0, Lhmt$1$1;->b:Lhmt$1;

    iput-object p2, p0, Lhmt$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    const-string/jumbo v2, "H5UcService::UcServiceWorkerSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logServiceWorkerOnReceiveValue "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lhmt$1$1;->b:Lhmt$1;

    iget-object v4, v4, Lhmt$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lhmt$1$1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    iget-object v2, p0, Lhmt$1$1;->b:Lhmt$1;

    iget-object v3, v2, Lhmt$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmt$1$1;->a:Ljava/lang/Object;

    .line 1075
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    .line 1076
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1077
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-interface {v4, v2, v3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->logServiceWorkerOnReceiveValue(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 58
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 59
    .local v0, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    if-eqz v0, :cond_1

    .line 60
    iget-object v2, p0, Lhmt$1$1;->b:Lhmt$1;

    iget-object v2, v2, Lhmt$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lhmt$1$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_1
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5UcService::UcServiceWorkerSetup"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
