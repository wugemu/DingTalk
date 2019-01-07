.class public Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;
.super Ljava/lang/Object;
.source "H5ProviderConfig.java"


# instance fields
.field public bundleName:Ljava/lang/String;

.field public className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;->bundleName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;->className:Ljava/lang/String;

    .line 15
    return-void
.end method
