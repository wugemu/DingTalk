.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
.super Ljava/lang/Object;
.source "BisBehavLog.java"


# instance fields
.field public behavCommon:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

.field public behavTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;",
            ">;"
        }
    .end annotation
.end field

.field public behavToken:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

.field public clientInfo:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

.field public extAttr:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBehavCommon()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavCommon:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    return-object v0
.end method

.method public getBehavTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavTask:Ljava/util/List;

    return-object v0
.end method

.method public getBehavToken()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavToken:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

    return-object v0
.end method

.method public getClientInfo()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->clientInfo:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

    return-object v0
.end method

.method public getExtAttr()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->extAttr:Ljava/util/Map;

    return-object v0
.end method

.method public setBehavCommon(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;)V
    .locals 0
    .param p1, "behavCommon"    # Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavCommon:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    .line 44
    return-void
.end method

.method public setBehavTask(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "behavTask":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;>;"
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavTask:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setBehavToken(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;)V
    .locals 0
    .param p1, "behavToken"    # Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavToken:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

    .line 36
    return-void
.end method

.method public setClientInfo(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;)V
    .locals 0
    .param p1, "clientInfo"    # Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->clientInfo:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

    .line 28
    return-void
.end method

.method public setExtAttr(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "extAttr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->extAttr:Ljava/util/Map;

    .line 60
    return-void
.end method
