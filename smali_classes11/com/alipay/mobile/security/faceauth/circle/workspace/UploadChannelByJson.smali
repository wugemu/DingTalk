.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;
.super Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;
.source "UploadChannelByJson.java"


# instance fields
.field a:Lcom/alipay/mobile/security/bio/service/BioUploadService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v1, "BioServiceManager is null..."

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;->a:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    .line 26
    return-void
.end method


# virtual methods
.method public doUploadNineShoot(Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "content"    # Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    .param p2, "log"    # Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .param p3, "bistoken"    # Ljava/lang/String;
    .param p4, "publicKey"    # Ljava/lang/String;
    .param p5, "isTestEnv"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V

    .line 55
    .local v0, "bioUploadItem":Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    .line 56
    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:Ljava/lang/Object;

    .line 57
    iput-object p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:Ljava/lang/Object;

    .line 58
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    .line 60
    iput-boolean p5, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isTestEnv:Z

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;->a:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I

    .line 63
    return-void
.end method

.method public setCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;->a:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;->a:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->addCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V

    .line 33
    :cond_0
    return-void
.end method

.method public uploadFaceInfo(Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "content"    # Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    .param p2, "log"    # Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .param p3, "bistoken"    # Ljava/lang/String;
    .param p4, "publicKey"    # Ljava/lang/String;
    .param p5, "isTestEnv"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V

    .line 40
    .local v0, "bioUploadItem":Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:Ljava/lang/Object;

    .line 42
    iput-object p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:Ljava/lang/Object;

    .line 43
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    .line 45
    iput-boolean p5, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isTestEnv:Z

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;->a:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I

    .line 49
    .end local v0    # "bioUploadItem":Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    :cond_0
    return-void
.end method
