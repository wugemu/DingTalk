.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/TrustLoginAlipayResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
.source "TrustLoginAlipayResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cookieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/fc/custprod/service/info/LoginCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;-><init>()V

    return-void
.end method
