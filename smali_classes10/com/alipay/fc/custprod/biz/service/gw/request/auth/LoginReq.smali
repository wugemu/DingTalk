.class public Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;
.super Liip;
.source "LoginReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alias:Ljava/lang/String;

.field public alipayUserId:Ljava/lang/String;

.field public clientKey:Ljava/lang/String;

.field public ctuVerifyId:Ljava/lang/String;

.field public keepOnline:Z

.field public loginPassword:Ljava/lang/String;

.field public loginScene:Ljava/lang/String;

.field public rdsData:Ljava/lang/String;

.field public rdsDegrate:Ljava/util/Map;
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

.field public roleId:Ljava/lang/String;

.field public securityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public smsCodeValidate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Liip;-><init>()V

    .line 40
    const-string/jumbo v0, "INDIVIDUAL_NORMAL_LOGIN"

    iput-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;->loginScene:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/request/auth/LoginReq;->smsCodeValidate:Ljava/lang/String;

    return-void
.end method
