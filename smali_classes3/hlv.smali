.class public Lhlv;
.super Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.source "MiniAppBundleDownloadCallback.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "path"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    .line 11
    iput p1, p0, Lhlv;->a:I

    .line 12
    return-void
.end method
