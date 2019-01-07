.class public Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "LoginRequestData.java"


# instance fields
.field private account:Ljava/lang/String;

.field private alilangToken:Ljava/lang/String;

.field private deviceCode:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private loginToken:Ljava/lang/String;

.field private networkOperator:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private prevDeviceCode:Ljava/lang/String;

.field private ua:Ljava/lang/String;

.field private uaTimestamp:Ljava/lang/String;

.field private umid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "umid"    # Ljava/lang/String;
    .param p6, "ua"    # Ljava/lang/String;
    .param p7, "uaTimestamp"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->loginToken:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->alilangToken:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->account:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->password:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->umid:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->ua:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->uaTimestamp:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->os:Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceModel:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/request/data/RequestTools;->getProvidersName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->networkOperator:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/request/data/RequestTools;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->networkType:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/request/data/RequestTools;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->language:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->alilangToken:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAlilangToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->alilangToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->networkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevDeviceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->prevDeviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public getUaTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->uaTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->umid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->account:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setAlilangToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "alilangToken"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->alilangToken:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setDeviceCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceCode"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceCode:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->deviceModel:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->language:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginToken"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->loginToken:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setNetworkOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->networkOperator:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->networkType:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->os:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->password:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPrevDeviceCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "prevDeviceCode"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->prevDeviceCode:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setUa(Ljava/lang/String;)V
    .locals 0
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->ua:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUaTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "uaTimestamp"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->uaTimestamp:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUmid(Ljava/lang/String;)V
    .locals 0
    .param p1, "umid"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/LoginRequestData;->umid:Ljava/lang/String;

    .line 84
    return-void
.end method
