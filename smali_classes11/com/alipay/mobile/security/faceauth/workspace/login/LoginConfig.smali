.class public Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;
.super Lcom/alipay/mobile/security/faceauth/config/ActionConfig;
.source "LoginConfig.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/config/DetectionActionConfig;


# static fields
.field public static _instance:Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->_instance:Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v1, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->_instance:Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->_instance:Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->_instance:Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDrmVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getFaceSetting()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getLoginMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getLoginmode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "models":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getLoginmode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method public getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/workspace/login/LoginConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    move-result-object v0

    return-object v0
.end method
