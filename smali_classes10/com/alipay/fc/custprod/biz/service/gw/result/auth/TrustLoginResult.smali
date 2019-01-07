.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/TrustLoginResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
.source "TrustLoginResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public aCertifyGrade:Z

.field public alipayBindMobile:Ljava/lang/String;

.field public alipayCertName:Ljava/lang/String;

.field public alipayCertifyCertNo:Ljava/lang/String;

.field public alipayUserId:Ljava/lang/String;

.field public registerToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;-><init>()V

    return-void
.end method
