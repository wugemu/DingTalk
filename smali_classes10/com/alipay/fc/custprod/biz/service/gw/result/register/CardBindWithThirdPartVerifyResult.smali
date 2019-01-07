.class public Lcom/alipay/fc/custprod/biz/service/gw/result/register/CardBindWithThirdPartVerifyResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "CardBindWithThirdPartVerifyResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizResult:Ljava/util/Map;
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

.field public bizToken:Ljava/lang/String;

.field public ctuToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
