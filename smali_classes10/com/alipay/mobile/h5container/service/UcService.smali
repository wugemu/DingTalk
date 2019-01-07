.class public abstract Lcom/alipay/mobile/h5container/service/UcService;
.super Lcom/alipay/mobile/nebula/wallet/H5ExternalService;
.source "UcService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/wallet/H5ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract init(Z)Z
.end method

.method public abstract initUC7zSo()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
