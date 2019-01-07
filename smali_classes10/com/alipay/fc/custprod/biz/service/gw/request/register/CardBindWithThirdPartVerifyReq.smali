.class public Lcom/alipay/fc/custprod/biz/service/gw/request/register/CardBindWithThirdPartVerifyReq;
.super Liip;
.source "CardBindWithThirdPartVerifyReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizToken:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public ctuToken:Ljava/lang/String;

.field public param:Ljava/util/Map;
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

.field public securityCheckInfo:Lcom/alipay/fc/custprod/biz/service/gw/model/SecurityCheckInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Liip;-><init>()V

    return-void
.end method
