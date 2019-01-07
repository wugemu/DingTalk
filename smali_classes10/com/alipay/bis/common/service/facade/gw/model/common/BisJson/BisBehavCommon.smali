.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;
.super Ljava/lang/Object;
.source "BisBehavCommon.java"


# instance fields
.field public invtp:Ljava/lang/String;

.field public retry:Ljava/lang/String;

.field public tm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvtp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->invtp:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->retry:Ljava/lang/String;

    return-object v0
.end method

.method public getTm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->tm:Ljava/lang/String;

    return-object v0
.end method

.method public setInvtp(Ljava/lang/String;)V
    .locals 0
    .param p1, "invtp"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->invtp:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setRetry(Ljava/lang/String;)V
    .locals 0
    .param p1, "retry"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->retry:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTm(Ljava/lang/String;)V
    .locals 0
    .param p1, "tm"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->tm:Ljava/lang/String;

    .line 26
    return-void
.end method
