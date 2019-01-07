.class public Lcom/alipay/fc/custprod/biz/service/gw/request/auth/TrustLoginReq;
.super Liip;
.source "TrustLoginReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipayToken:Ljava/lang/String;

.field public loginScene:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Liip;-><init>()V

    .line 51
    const-string/jumbo v0, "ALIPAY_TRUST_LOGIN"

    iput-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/TrustLoginReq;->loginScene:Ljava/lang/String;

    return-void
.end method
