.class public Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/NetConfig;
.source "ActionNetConfig.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

.field private b:Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

.field private c:Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

.field private d:Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

.field private e:Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/NetConfig;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->a:Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    return-object v0
.end method

.method public getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->b:Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    return-object v0
.end method

.method public getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->d:Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    return-object v0
.end method

.method public getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->e:Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    return-object v0
.end method

.method public getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->c:Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;)V
    .locals 0
    .param p1, "algorithm"    # Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->a:Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    .line 19
    return-void
.end method

.method public setDetect(Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;)V
    .locals 0
    .param p1, "detect"    # Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->b:Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    .line 27
    return-void
.end method

.method public setEnable(Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;)V
    .locals 0
    .param p1, "enable"    # Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->d:Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    .line 43
    return-void
.end method

.method public setMine(Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;)V
    .locals 0
    .param p1, "mine"    # Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->e:Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    .line 51
    return-void
.end method

.method public setUpload(Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;)V
    .locals 0
    .param p1, "upload"    # Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->c:Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    .line 35
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;->f:Ljava/lang/String;

    .line 60
    return-void
.end method
