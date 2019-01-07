.class public Lcom/alipay/fc/custprod/biz/service/gw/result/register/BindedCardsQueryResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "BindedCardsQueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bindedCardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/fc/custprod/biz/service/gw/model/CardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
