.class public Lcom/alipay/fc/custprod/biz/service/gw/result/register/BindingCardsQueryResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "BindingCardsQueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bindingCardInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/fc/custprod/biz/service/gw/model/AlipayCardBindInfo;",
            ">;"
        }
    .end annotation
.end field

.field public defaultDisPlayUserId:Ljava/lang/String;

.field public pdSeqNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
