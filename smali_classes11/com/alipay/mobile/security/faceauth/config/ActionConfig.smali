.class public Lcom/alipay/mobile/security/faceauth/config/ActionConfig;
.super Ljava/lang/Object;
.source "ActionConfig.java"


# instance fields
.field protected a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cant be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->b:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private a()Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;-><init>()V

    .line 129
    .local v0, "faceNetConfig":Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->c()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    .line 131
    .local v1, "login":Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->b()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v2

    .line 133
    .local v2, "sample":Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->setLogin(Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;)V

    .line 134
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->setSample(Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;)V

    .line 137
    return-object v0
.end method

.method private static b()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;
    .locals 3

    .prologue
    .line 142
    new-instance v1, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;-><init>()V

    .line 151
    .local v1, "sample":Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;-><init>()V

    .line 152
    .local v0, "mineNetConfig":Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;->setVideo(I)V

    .line 154
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setAlgorithm(Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;)V

    .line 155
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setDetect(Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;)V

    .line 156
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setEnable(Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setMine(Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;)V

    .line 158
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setUpload(Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;)V

    .line 159
    return-object v1
.end method

.method private static c()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;
    .locals 3

    .prologue
    .line 163
    new-instance v1, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;-><init>()V

    .line 165
    .local v1, "login":Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setAlgorithm(Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;)V

    .line 166
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;-><init>()V

    .line 167
    .local v0, "detectNetConfig":Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;->setTime(I)V

    .line 168
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setDetect(Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;)V

    .line 169
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setEnable(Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;)V

    .line 170
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setMine(Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;)V

    .line 171
    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setUpload(Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;)V

    .line 172
    return-object v1
.end method


# virtual methods
.method public getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;-><init>()V

    return-object v0
.end method

.method public getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;-><init>()V

    return-object v0
.end method

.method public getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrmVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;-><init>()V

    return-object v0
.end method

.method public getEnv()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getEnv()I

    move-result v0

    return v0
.end method

.method public getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;-><init>()V

    return-object v0
.end method

.method public getMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;-><init>()V

    return-object v0
.end method

.method public loadConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a()Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    :try_start_0
    const-class v0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    invoke-static {p2, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    .line 1069
    if-nez v0, :cond_2

    .line 1071
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a()Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a()Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->a:Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;

    goto :goto_0

    .line 1082
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1083
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->c()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->setLogin(Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;)V

    .line 1104
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1105
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->b()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->setSample(Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;)V

    goto :goto_0

    .line 1085
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1086
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setAlgorithm(Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;)V

    .line 1088
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1089
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setDetect(Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;)V

    .line 1091
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1092
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setEnable(Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;)V

    .line 1094
    :cond_7
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1095
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setMine(Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;)V

    .line 1097
    :cond_8
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1098
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getLogin()Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/LoginNetConfig;->setUpload(Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;)V

    goto :goto_1

    .line 1107
    :cond_9
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1108
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setAlgorithm(Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;)V

    .line 1110
    :cond_a
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1111
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setDetect(Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;)V

    .line 1113
    :cond_b
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1114
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setEnable(Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;)V

    .line 1116
    :cond_c
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1117
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setMine(Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;)V

    .line 1119
    :cond_d
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1120
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/FaceNetConfig;->getSample()Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->setUpload(Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public loadConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->b:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/security/faceauth/config/ActionConfig;->loadConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method
