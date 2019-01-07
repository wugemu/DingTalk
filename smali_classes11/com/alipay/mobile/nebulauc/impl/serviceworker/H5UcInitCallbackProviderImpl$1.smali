.class final Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$1;
.super Ljava/lang/Object;
.source "H5UcInitCallbackProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->onInitUcSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$1;->a:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerController()V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerCallback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UcInitCallbackProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
