.class final Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$4;
.super Ljava/lang/Object;
.source "H5UcInitCallbackProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->preCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$4;->b:Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$4;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

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
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$4;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->destroy()V

    .line 293
    const-string/jumbo v1, "H5UcInitCallbackProviderImpl"

    const-string/jumbo v2, "preCreate destroy "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "thr":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UcInitCallbackProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
