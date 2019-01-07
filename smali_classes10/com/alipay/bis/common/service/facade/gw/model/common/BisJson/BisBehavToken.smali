.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;
.super Ljava/lang/Object;
.source "BisBehavToken.java"


# instance fields
.field public apdid:Ljava/lang/String;

.field public apdidToken:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public behid:Ljava/lang/String;

.field public bizid:Ljava/lang/String;

.field public sampleMode:I

.field public token:Ljava/lang/String;

.field public type:I

.field public uid:Ljava/lang/String;

.field public verifyid:Ljava/lang/String;

.field public vtoken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->type:I

    .line 10
    iput v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->sampleMode:I

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->verifyid:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->vtoken:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->apdidToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getApdidToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->apdidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getBehid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->behid:Ljava/lang/String;

    return-object v0
.end method

.method public getBizid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->bizid:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleMode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->sampleMode:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->verifyid:Ljava/lang/String;

    return-object v0
.end method

.method public getVtoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->vtoken:Ljava/lang/String;

    return-object v0
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "apdid"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->apdid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setApdidToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "apdidToken"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->apdidToken:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->appid:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setBehid(Ljava/lang/String;)V
    .locals 0
    .param p1, "behid"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->behid:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setBizid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizid"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->bizid:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSampleMode(I)V
    .locals 0
    .param p1, "sampleMode"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->sampleMode:I

    .line 42
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->token:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->type:I

    .line 34
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->uid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setVerifyid(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifyid"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->verifyid:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setVtoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "vtoken"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->vtoken:Ljava/lang/String;

    .line 98
    return-void
.end method
