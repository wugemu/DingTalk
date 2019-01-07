.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$1;
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
    .line 318
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2$1;->a:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    :try_start_0
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 323
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 324
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->notifyUcInitSuccess()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "notifyUcInitSuccess error!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
