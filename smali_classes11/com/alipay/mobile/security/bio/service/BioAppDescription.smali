.class public Lcom/alipay/mobile/security/bio/service/BioAppDescription;
.super Ljava/lang/Object;
.source "BioAppDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appInterfaceName:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private autoClose:Z

.field private bioAction:I

.field private bioType:I

.field private bistoken:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private cfg:Ljava/lang/String;

.field protected extMetaInfo:Ljava/util/Map;
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

.field protected extProperty:Ljava/util/Map;
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

.field private headImageDir:Ljava/lang/String;

.field private mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

.field private productID:I

.field private remoteURL:Ljava/lang/String;

.field private signed:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->signed:Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->extProperty:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->extMetaInfo:Ljava/util/Map;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->productID:I

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->autoClose:Z

    return-void
.end method


# virtual methods
.method public addExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->extProperty:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public getAppInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->appInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBioAction()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bioAction:I

    return v0
.end method

.method public getBioType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bioType:I

    return v0
.end method

.method public getBistoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bistoken:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCfg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->cfg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtMetaInfo()Ljava/util/Map;
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
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->extMetaInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getExtProperty()Ljava/util/Map;
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
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->extProperty:Ljava/util/Map;

    return-object v0
.end method

.method public getFcSpecialData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getHeadImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->headImageDir:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->productID:I

    return v0
.end method

.method public getRemoteURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->remoteURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoClose()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->autoClose:Z

    return v0
.end method

.method public isSigned()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->signed:Z

    return v0
.end method

.method public setAppInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appInterfaceName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->appInterfaceName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->appName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setAutoClose(Z)V
    .locals 0
    .param p1, "autoClose"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->autoClose:Z

    .line 160
    return-void
.end method

.method public setBioAction(I)V
    .locals 0
    .param p1, "bioAction"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bioAction:I

    .line 113
    return-void
.end method

.method public setBioType(I)V
    .locals 0
    .param p1, "bioType"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bioType:I

    .line 105
    return-void
.end method

.method public setBistoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "bistoken"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bistoken:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bundle:Landroid/os/Bundle;

    .line 184
    return-void
.end method

.method public setCfg(Ljava/lang/String;)V
    .locals 0
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->cfg:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setExtMetaInfo(Ljava/util/Map;)V
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
    .line 175
    .local p1, "extMetaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->extMetaInfo:Ljava/util/Map;

    .line 176
    return-void
.end method

.method public setFcSpecialData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "FcSpecialData"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

    .line 152
    return-void
.end method

.method public setHeadImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "headImage"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->headImageDir:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setProductID(I)V
    .locals 0
    .param p1, "productID"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->productID:I

    .line 168
    return-void
.end method

.method public setRemoteURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteURL"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->remoteURL:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSigned(Z)V
    .locals 0
    .param p1, "signed"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->signed:Z

    .line 137
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueTag"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->tag:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " bioType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " bioAction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bioAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " appName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " cfg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->cfg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " signed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->signed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " bistoken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->bistoken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " autoClose:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->autoClose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " appInterfaceName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->appInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " productID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->productID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
