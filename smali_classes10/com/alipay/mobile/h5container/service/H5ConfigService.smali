.class public abstract Lcom/alipay/mobile/h5container/service/H5ConfigService;
.super Lint;
.source "H5ConfigService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lint;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getProviderInfoMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;",
            ">;"
        }
    .end annotation
.end method
