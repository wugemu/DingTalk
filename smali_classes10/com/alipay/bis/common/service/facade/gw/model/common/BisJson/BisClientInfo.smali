.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;
.super Ljava/lang/Object;
.source "BisClientInfo.java"


# instance fields
.field public clientVer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->clientVer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public setClientVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientVer"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->clientVer:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->model:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->os:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVer"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->osVer:Ljava/lang/String;

    .line 35
    return-void
.end method
