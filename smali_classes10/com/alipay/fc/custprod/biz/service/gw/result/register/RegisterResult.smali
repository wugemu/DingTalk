.class public Lcom/alipay/fc/custprod/biz/service/gw/result/register/RegisterResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "RegisterResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ctuVerifyId:Ljava/lang/String;

.field public mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

.field public respParamsMap:Ljava/util/Map;
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

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
