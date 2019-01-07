.class public Lcom/alipay/fc/custprod/biz/service/gw/model/AlipayCardBindInfo;
.super Ljava/lang/Object;
.source "AlipayCardBindInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/fc/custprod/biz/service/gw/model/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public loginId:Ljava/lang/String;

.field public loginIdView:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
