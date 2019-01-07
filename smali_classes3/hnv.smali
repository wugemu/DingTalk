.class public final Lhnv;
.super Ljava/lang/Object;
.source "MiniAppUCInitProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initUc()Z
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
