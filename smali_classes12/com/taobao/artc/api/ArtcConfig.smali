.class public Lcom/taobao/artc/api/ArtcConfig;
.super Ljava/lang/Object;
.source "ArtcConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/api/ArtcConfig$Builder;
    }
.end annotation


# static fields
.field private static final ARTC_SDK_VERSION:Ljava/lang/String; = "0.2.0"

.field private static final DEFAULT_CONFIT_UNKNOW:Ljava/lang/String; = "unknow"


# instance fields
.field private accsCfgTag:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field public board:Ljava/lang/String;

.field private callTimeoutSec:I

.field private cameraOutFormat:I

.field public carriers:Ljava/lang/String;

.field private checkAccsConnection:Z

.field public deviceId:Ljava/lang/String;

.field private environment:I

.field private extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

.field private extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

.field public ip:Ljava/lang/String;

.field private loadBeautyResource:Z

.field private localUserId:Ljava/lang/String;

.field private lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

.field public model:Ljava/lang/String;

.field public networkType:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field private preferBlueTooth:Z

.field private preferFrontCamera:Z

.field public protocal:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private videoDecodeMode:I

.field private videoEncodeMode:I

.field private videoRawFilePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->carriers:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->model:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->board:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->networkType:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "0.2.0"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->sdkVersion:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->osVersion:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/taobao/artc/api/ArtcConfig;->extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .line 58
    iput-object v1, p0, Lcom/taobao/artc/api/ArtcConfig;->extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/artc/api/ArtcConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/artc/api/ArtcConfig$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/artc/api/ArtcConfig;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/taobao/artc/api/ArtcConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig;->videoDecodeMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/taobao/artc/api/ArtcConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig;->cameraOutFormat:I

    return p1
.end method

.method static synthetic access$1202(Lcom/taobao/artc/api/ArtcConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig;->checkAccsConnection:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->videoRawFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/lwp/ArtcLWPChannel$a;)Lcom/taobao/artc/lwp/ArtcLWPChannel$a;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/ArtcExternalVideoProcess;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/ArtcExternalAudioProcess;)Lcom/taobao/artc/api/ArtcExternalAudioProcess;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/taobao/artc/api/ArtcConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig;->callTimeoutSec:I

    return p1
.end method

.method static synthetic access$202(Lcom/taobao/artc/api/ArtcConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig;->environment:I

    return p1
.end method

.method static synthetic access$302(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->localUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->serviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->accsCfgTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/taobao/artc/api/ArtcConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig;->loadBeautyResource:Z

    return p1
.end method

.method static synthetic access$702(Lcom/taobao/artc/api/ArtcConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig;->preferBlueTooth:Z

    return p1
.end method

.method static synthetic access$802(Lcom/taobao/artc/api/ArtcConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig;->preferFrontCamera:Z

    return p1
.end method

.method static synthetic access$902(Lcom/taobao/artc/api/ArtcConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig;->videoEncodeMode:I

    return p1
.end method


# virtual methods
.method public appkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public callTimeoutSec()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/taobao/artc/api/ArtcConfig;->callTimeoutSec:I

    return v0
.end method

.method public cameraOutFormat()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/taobao/artc/api/ArtcConfig;->cameraOutFormat:I

    return v0
.end method

.method public environment()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/taobao/artc/api/ArtcConfig;->environment:I

    return v0
.end method

.method public externalAudioProcess()Lcom/taobao/artc/api/ArtcExternalAudioProcess;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    return-object v0
.end method

.method public externalVideoProcess()Lcom/taobao/artc/api/ArtcExternalVideoProcess;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    return-object v0
.end method

.method public getAccsCfgTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->accsCfgTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLWPSender()Lcom/taobao/artc/lwp/ArtcLWPChannel$a;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    return-object v0
.end method

.method public getLocalUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->localUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckAccsConnection()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/taobao/artc/api/ArtcConfig;->checkAccsConnection:Z

    return v0
.end method

.method public isLoadBeautyResource()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/taobao/artc/api/ArtcConfig;->loadBeautyResource:Z

    return v0
.end method

.method public isPreferBlueTooth()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/taobao/artc/api/ArtcConfig;->preferBlueTooth:Z

    return v0
.end method

.method public isPreferFrontCamera()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/taobao/artc/api/ArtcConfig;->preferFrontCamera:Z

    return v0
.end method

.method public protocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->protocal:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localUserId"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig;->localUserId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x27

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ArtcConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "appKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, ", localUserId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v1, ", carriers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->carriers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, ", model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, ", board=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->board:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, ", osVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->osVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, ", networkType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, ", sdkVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, ", accsCfgTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/api/ArtcConfig;->accsCfgTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public verifyVaild()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->localUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoDecodeMode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/taobao/artc/api/ArtcConfig;->videoDecodeMode:I

    return v0
.end method

.method public videoEncodeMode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/taobao/artc/api/ArtcConfig;->videoEncodeMode:I

    return v0
.end method

.method public videoRawFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcConfig;->videoRawFilePath:Ljava/lang/String;

    return-object v0
.end method
