.class public Lcom/taobao/artc/api/ArtcConfig$Builder;
.super Ljava/lang/Object;
.source "ArtcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/ArtcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accsCfgTag:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private callTimeoutSec:I

.field private cameraOutFormat:I

.field private checkAccsConnection:Z

.field private deviceID:Ljava/lang/String;

.field private environment:I

.field private extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

.field private extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

.field private loadBeautyResource:Z

.field private localUserId:Ljava/lang/String;

.field private lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

.field private preferBlueTooth:Z

.field private preferFrontCamera:Z

.field private protocal:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private videoDecodeMode:I

.field private videoEncodeMode:I

.field private videoRawFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->loadBeautyResource:Z

    .line 155
    iput-boolean v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->preferBlueTooth:Z

    .line 156
    iput-boolean v2, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->preferFrontCamera:Z

    .line 157
    const-string/jumbo v0, "accs"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->protocal:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoEncodeMode:I

    .line 159
    iput v2, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoDecodeMode:I

    .line 160
    iput v2, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->cameraOutFormat:I

    .line 161
    iput-boolean v2, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->checkAccsConnection:Z

    .line 162
    const-string/jumbo v0, "empty_app_key"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->appKey:Ljava/lang/String;

    .line 163
    const-string/jumbo v0, "empty_user_id"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->localUserId:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "empty_service_name"

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->serviceName:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->accsCfgTag:Ljava/lang/String;

    .line 167
    iput v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->environment:I

    .line 168
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoRawFilePath:Ljava/lang/String;

    .line 169
    iput-object v3, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .line 170
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->deviceID:Ljava/lang/String;

    .line 171
    iput-object v3, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .line 172
    iput-object v3, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 173
    const/16 v0, 0x3c

    iput v0, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->callTimeoutSec:I

    .line 174
    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/artc/api/ArtcConfig;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    new-instance v0, Lcom/taobao/artc/api/ArtcConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;-><init>(Lcom/taobao/artc/api/ArtcConfig$1;)V

    .line 295
    .local v0, "artcConfig":Lcom/taobao/artc/api/ArtcConfig;
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->appKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$102(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    iget v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->environment:I

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$202(Lcom/taobao/artc/api/ArtcConfig;I)I

    .line 297
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->localUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$302(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->serviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$402(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->accsCfgTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$502(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    iget-boolean v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->loadBeautyResource:Z

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$602(Lcom/taobao/artc/api/ArtcConfig;Z)Z

    .line 301
    iget-boolean v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->preferBlueTooth:Z

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$702(Lcom/taobao/artc/api/ArtcConfig;Z)Z

    .line 302
    iget-boolean v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->preferFrontCamera:Z

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$802(Lcom/taobao/artc/api/ArtcConfig;Z)Z

    .line 303
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->protocal:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcConfig;->protocal:Ljava/lang/String;

    .line 304
    iget v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoEncodeMode:I

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$902(Lcom/taobao/artc/api/ArtcConfig;I)I

    .line 305
    iget v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoDecodeMode:I

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1002(Lcom/taobao/artc/api/ArtcConfig;I)I

    .line 306
    iget v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->cameraOutFormat:I

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1102(Lcom/taobao/artc/api/ArtcConfig;I)I

    .line 307
    iget-boolean v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->checkAccsConnection:Z

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1202(Lcom/taobao/artc/api/ArtcConfig;Z)Z

    .line 308
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoRawFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1302(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1402(Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/lwp/ArtcLWPChannel$a;)Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .line 310
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->deviceID:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1502(Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/ArtcExternalVideoProcess;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .line 312
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1602(Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/ArtcExternalAudioProcess;)Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 313
    iget v1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->callTimeoutSec:I

    invoke-static {v0, v1}, Lcom/taobao/artc/api/ArtcConfig;->access$1702(Lcom/taobao/artc/api/ArtcConfig;I)I

    .line 314
    return-object v0
.end method

.method public setAccsCfgTag(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "accsCfgTag"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->accsCfgTag:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setAccsConfigTag(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "accsConfigTag"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Lcom/taobao/artc/accs/ArtcAccsHandler;->setAccsConfigTag(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->accsCfgTag:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->appKey:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public setAudioExternalProcess(Lcom/taobao/artc/api/ArtcExternalAudioProcess;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "extAudioProcess"    # Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->extAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 285
    return-object p0
.end method

.method public setCallTimeoutSec(I)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "sec"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->callTimeoutSec:I

    .line 290
    return-object p0
.end method

.method public setCameraOutFormat(I)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->cameraOutFormat:I

    .line 250
    return-object p0
.end method

.method public setCheckAccsConnection(Z)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->checkAccsConnection:Z

    .line 260
    return-object p0
.end method

.method public setDeviceID(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->deviceID:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public setEnvironment(I)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->environment:I

    .line 201
    return-object p0
.end method

.method public setLWPSender(Lcom/taobao/artc/lwp/ArtcLWPChannel$a;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "lwpSender"    # Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->lwpSender:Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    .line 270
    return-object p0
.end method

.method public setLoadBeautyResource(Z)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->loadBeautyResource:Z

    .line 225
    return-object p0
.end method

.method public setLocalUserId(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "localUserId"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->localUserId:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setPreferBlueTooth(Z)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "prefer"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->preferBlueTooth:Z

    .line 230
    return-object p0
.end method

.method public setPreferFrontCamera(Z)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "prefer"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->preferFrontCamera:Z

    .line 235
    return-object p0
.end method

.method public setProtocal(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "protocal"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->protocal:Ljava/lang/String;

    .line 255
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->serviceName:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setVideoCaptureExternalProcess(Lcom/taobao/artc/api/ArtcExternalVideoProcess;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "extVideoProcess"    # Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->extVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .line 280
    return-object p0
.end method

.method public setVideoDecodeMode(I)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoDecodeMode:I

    .line 245
    return-object p0
.end method

.method public setVideoEncodeMode(I)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoEncodeMode:I

    .line 240
    return-object p0
.end method

.method public setVideoRawFilePath(Ljava/lang/String;)Lcom/taobao/artc/api/ArtcConfig$Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcConfig$Builder;->videoRawFilePath:Ljava/lang/String;

    .line 265
    return-object p0
.end method
