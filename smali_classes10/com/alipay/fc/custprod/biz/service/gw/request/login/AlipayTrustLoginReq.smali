.class public Lcom/alipay/fc/custprod/biz/service/gw/request/login/AlipayTrustLoginReq;
.super Lcom/alipay/fc/custprod/biz/service/gw/request/login/TrustLoginReq;
.source "AlipayTrustLoginReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authCode:Ljava/lang/String;

.field public clientKey:Ljava/lang/String;

.field public ctuVerifyId:Ljava/lang/String;

.field public extendMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public keepOnline:Z

.field public loginScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/request/login/TrustLoginReq;-><init>()V

    return-void
.end method
