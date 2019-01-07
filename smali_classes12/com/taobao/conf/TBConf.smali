.class public Lcom/taobao/conf/TBConf;
.super Ljava/lang/Object;
.source "TBConf.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Lcom/taobao/conf/TBConf;->nativeInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    const-string/jumbo v0, "TBConf"

    const-string/jumbo v1, "TBConf Native init failed"

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/taobao/conf/TBConf;->setContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    const-string/jumbo v0, "TBConf"

    const-string/jumbo v1, "TBConf setContext failed"

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeInit(Landroid/content/Context;)Z
.end method


# virtual methods
.method public native acceptCall(Ljava/lang/String;ZZ)Z
.end method

.method public native addLocalRenderer(Ljava/lang/Object;SSS)V
.end method

.method public native addRenderer(Ljava/lang/String;Ljava/lang/Object;SSS)V
.end method

.method public native disableVideo(Ljava/lang/String;)V
.end method

.method public native enableAbTest(Z)V
.end method

.method public native enableMediaRingtone(Z)V
.end method

.method public native enableVideo(Ljava/lang/String;)V
.end method

.method public native hangup(Ljava/lang/String;I)Z
.end method

.method public native makeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)Z
.end method

.method public native muteMic(Z)V
.end method

.method public native muteSpeaker(Z)V
.end method

.method public native preview()V
.end method

.method public native registerCallConfig(Lcom/taobao/conf/TBConfConfig;)V
.end method

.method public native registerCallback(Lcom/taobao/conf/ITBConfCallback;)V
.end method

.method public native registerConfig(ZZ)V
.end method

.method public native registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native rejectCall(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public native release()V
.end method

.method public native removeAllRenderer(Z)V
.end method

.method public native setAudioRouterMode(I)V
.end method

.method public native setAudioVolume(I)V
.end method

.method public native setBeautify(I)V
.end method

.method public native setCamera(I)I
.end method

.method public native setContext(Landroid/content/Context;)Z
.end method

.method public native setMicVolume(I)V
.end method

.method public native setPlayout(Z)V
.end method

.method public native stopPreview()V
.end method

.method public native updateVideoFilter(Ljava/lang/String;Ljava/lang/String;)V
.end method
