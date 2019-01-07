.class public Lcom/alipay/fc/custprod/biz/service/gw/request/register/RegisterReq;
.super Liip;
.source "RegisterReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actions:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public ctuVerifyId:Ljava/lang/String;

.field public reqParamsMap:Ljava/util/Map;
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
    .line 13
    invoke-direct {p0}, Liip;-><init>()V

    return-void
.end method
