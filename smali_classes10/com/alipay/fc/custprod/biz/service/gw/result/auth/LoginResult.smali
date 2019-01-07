.class public Lcom/alipay/fc/custprod/biz/service/gw/result/auth/LoginResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "LoginResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authorationId:Ljava/lang/String;

.field public authorationMobileNo:Ljava/lang/String;

.field public authorationToken:Ljava/lang/String;

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

.field public ipId:Ljava/lang/String;

.field public lastSuccessTime:Ljava/util/Date;

.field public loginMessage:Ljava/lang/String;

.field public operatorInfo:Lcom/alipay/fc/custprod/biz/service/gw/result/auth/RoleInfo;

.field public roleId:Ljava/lang/String;

.field public roleInfo:Lcom/alipay/fc/custprod/biz/service/gw/result/auth/RoleInfo;

.field public securityToken:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
