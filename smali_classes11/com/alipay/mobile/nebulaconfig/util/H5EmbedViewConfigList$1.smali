.class final Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;
.super Ljava/util/ArrayList;
.source "H5EmbedViewConfigList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-string/jumbo v1, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v2, "com.alipay.mobile.tinyappcommon.embedview.H5EmbedWebView"

    const-string/jumbo v3, "web-view"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
