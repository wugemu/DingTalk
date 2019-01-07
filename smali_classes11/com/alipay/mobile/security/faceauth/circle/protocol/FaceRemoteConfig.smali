.class public Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;
.super Ljava/lang/Object;
.source "FaceRemoteConfig.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

.field private b:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

.field private c:Lcom/alipay/mobile/security/bio/config/bean/Coll;

.field private d:Lcom/alipay/mobile/security/bio/config/bean/Upload;

.field private e:Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

.field private f:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

.field private g:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->a:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    .line 16
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->b:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    .line 17
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/Coll;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->c:Lcom/alipay/mobile/security/bio/config/bean/Coll;

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/Upload;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/config/bean/Upload;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->d:Lcom/alipay/mobile/security/bio/config/bean/Upload;

    .line 19
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->e:Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    .line 20
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->f:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    .line 22
    new-array v0, v1, [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->g:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 24
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->h:I

    .line 25
    const/16 v0, 0x3df

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->i:I

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->e:Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    return-object v0
.end method

.method public getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->c:Lcom/alipay/mobile/security/bio/config/bean/Coll;

    return-object v0
.end method

.method public getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->g:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    return-object v0
.end method

.method public getEnv()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->h:I

    return v0
.end method

.method public getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->f:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    return-object v0
.end method

.method public getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->b:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    return-object v0
.end method

.method public getSceneEnv()Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->a:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    return-object v0
.end method

.method public getUi()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->i:I

    return v0
.end method

.method public getUpload()Lcom/alipay/mobile/security/bio/config/bean/Upload;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->d:Lcom/alipay/mobile/security/bio/config/bean/Upload;

    return-object v0
.end method

.method public setAlgorithm(Lcom/alipay/mobile/security/bio/config/bean/Algorithm;)V
    .locals 0
    .param p1, "algorithm"    # Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->e:Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    .line 61
    return-void
.end method

.method public setColl(Lcom/alipay/mobile/security/bio/config/bean/Coll;)V
    .locals 0
    .param p1, "coll"    # Lcom/alipay/mobile/security/bio/config/bean/Coll;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->c:Lcom/alipay/mobile/security/bio/config/bean/Coll;

    .line 45
    return-void
.end method

.method public setDeviceSettings([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 0
    .param p1, "deviceSettings"    # [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->g:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 97
    return-void
.end method

.method public setEnv(I)V
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->h:I

    .line 69
    return-void
.end method

.method public setFaceTips(Lcom/alipay/mobile/security/bio/config/bean/FaceTips;)V
    .locals 0
    .param p1, "faceTips"    # Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->f:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    .line 89
    return-void
.end method

.method public setNavi(Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;)V
    .locals 0
    .param p1, "navi"    # Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->b:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

    .line 37
    return-void
.end method

.method public setSceneEnv(Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;)V
    .locals 0
    .param p1, "sceneEnv"    # Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->a:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    .line 29
    return-void
.end method

.method public setUi(I)V
    .locals 0
    .param p1, "ui"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->i:I

    .line 77
    return-void
.end method

.method public setUpload(Lcom/alipay/mobile/security/bio/config/bean/Upload;)V
    .locals 0
    .param p1, "upload"    # Lcom/alipay/mobile/security/bio/config/bean/Upload;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->d:Lcom/alipay/mobile/security/bio/config/bean/Upload;

    .line 53
    return-void
.end method
