.class public Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;
.super Ljava/lang/Object;
.source "FaceAuthenticator.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/api/AntDetector;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alipay/mobile/security/bio/module/MicroModule;

.field c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/alipay/mobile/security/faceauth/FaceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->c:Ljava/util/Hashtable;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->b:Lcom/alipay/mobile/security/bio/module/MicroModule;

    .line 61
    new-instance v0, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->d:Lcom/alipay/mobile/security/faceauth/FaceService;

    .line 63
    const-string/jumbo v0, "Test"

    const-string/jumbo v1, "FaceAuthenticator"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public auth(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
    .locals 8
    .param p1, "param"    # Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
    .param p2, "callback"    # Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->b:Lcom/alipay/mobile/security/bio/module/MicroModule;

    invoke-static {v6, v7}, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->create(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v5

    .line 75
    .local v5, "mBiologyDetector":Lcom/alipay/mobile/security/bio/api/BioDetector;
    const-string/jumbo v3, "{ \"sample\": { \"detect\": { \"near\": 0.8, \"minangle\": -0.2, \"time\": 30, \"retry\": 5, \"targetratio\": 0.72, \"maxlight\": 80, \"maxangle\": 0.2, \"minlight\": 30, \"far\": 0.28 }, \"enable\": { \"record\": 1, \"enable\": false }, \"exatts\": {  }, \"mirror\": 0, \"upload\": { \"minquality\": 30 }, \"mine\": { \"video\": 5, \"dscore\": 1 }, \"samplemodes\": [], \"version\": \"3.0\", \"algorithm\": { \"blink\": 0, \"mouth\": 0, \"facesize\": 100 } }, \"navigatepage\": { \"version\": \"b\", \"enable\": true, \"url\": \"https://ds.alipay.com/rlmh/feceGuide.htm\", \"userNameHidden\": \"\u8d26\u6237\u672c\u4eba\" }, \"kmi\": { \"version\": \"oneline\" }, \"shakehint\": { \"version\": \"A\" } }"

    .line 77
    .local v3, "drmString":Ljava/lang/String;
    new-instance v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    invoke-direct {v2}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;-><init>()V

    .line 78
    .local v2, "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    invoke-virtual {v2, v3}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->setAndroidcfg(Ljava/lang/String;)V

    .line 79
    const/16 v6, 0x12e

    invoke-virtual {v2, v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->setSampleMode(I)V

    .line 80
    const-string/jumbo v6, "e111000"

    invoke-virtual {v2, v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->setToken(Ljava/lang/String;)V

    .line 81
    const/16 v6, 0x64

    invoke-virtual {v2, v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->setType(I)V

    .line 83
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;-><init>()V

    .line 84
    .local v1, "clientConfig":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->setContent(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v6, "123456"

    invoke-virtual {v1, v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->setSign(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/alipay/mobile/security/bio/api/BioParameter;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/api/BioParameter;-><init>()V

    .line 90
    .local v0, "biologyParameter":Lcom/alipay/mobile/security/bio/api/BioParameter;
    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setProtocol(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;

    invoke-direct {v6, p0, p2}, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator$1;-><init>(Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/security/bio/api/BioDetector;->auth(Lcom/alipay/mobile/security/bio/api/BioParameter;Lcom/alipay/mobile/security/bio/api/BioCallback;)V

    goto :goto_0
.end method

.method public cancle()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public checkEnvironment(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public command(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 154
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public doCloseFaceService()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->d:Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/FaceService;->closeService()V

    .line 165
    return-void
.end method

.method public doFaceQualityDetection(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .locals 1
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->d:Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/FaceService;->faceQualityDetection(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    move-result-object v0

    return-object v0
.end method

.method public doFaceQualityDetection(Lcom/alipay/mobile/security/faceauth/api/YUVFrame;Lcom/alipay/mobile/security/faceauth/api/FaceCallback;)Lcom/alipay/mobile/security/faceauth/api/RESULT;
    .locals 1
    .param p1, "frame"    # Lcom/alipay/mobile/security/faceauth/api/YUVFrame;
    .param p2, "callBack"    # Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->d:Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/security/faceauth/FaceService;->faceQualityDetection(Lcom/alipay/mobile/security/faceauth/api/YUVFrame;Lcom/alipay/mobile/security/faceauth/api/FaceCallback;)Lcom/alipay/mobile/security/faceauth/api/RESULT;

    move-result-object v0

    return-object v0
.end method

.method public doInitFaceService()Lcom/alipay/mobile/security/faceauth/api/RESULT;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/FaceAuthenticator;->d:Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/FaceService;->init()Lcom/alipay/mobile/security/faceauth/api/RESULT;

    move-result-object v0

    return-object v0
.end method

.method public login(Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
    .locals 0
    .param p1, "param"    # Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;
    .param p2, "callback"    # Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;

    .prologue
    .line 149
    return-void
.end method

.method public sample(Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
    .locals 0
    .param p1, "param"    # Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;
    .param p2, "callback"    # Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 128
    return-void
.end method
