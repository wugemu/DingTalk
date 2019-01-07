.class public Lcom/alivc/component/capture/VideoPusherJNI;
.super Ljava/lang/Object;
.source "VideoPusherJNI.java"


# instance fields
.field private mNativeHandler:J

.field private mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

.field private mVideoPusherDataListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

.field private mVideoPusherTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "nativeHandler"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    .line 19
    new-instance v0, Lcom/alivc/component/capture/VideoPusherJNI$1;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusherJNI$1;-><init>(Lcom/alivc/component/capture/VideoPusherJNI;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherDataListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    .line 27
    new-instance v0, Lcom/alivc/component/capture/VideoPusherJNI$2;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusherJNI$2;-><init>(Lcom/alivc/component/capture/VideoPusherJNI;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    .line 40
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {v0}, Lcom/alivc/component/capture/VideoPusher;-><init>()V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    .line 42
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherDataListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->setVideoSourceListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;)V

    .line 43
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->setVideoSourceTextureListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;)V

    .line 45
    :cond_0
    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/capture/VideoPusherJNI;[BJIIIII)I
    .locals 2
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusherJNI;
    .param p1, "x1"    # [B
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p8}, Lcom/alivc/component/capture/VideoPusherJNI;->onData([BJIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alivc/component/capture/VideoPusherJNI;JIIIII)I
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusherJNI;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/alivc/component/capture/VideoPusherJNI;->onTexture(JIIIII)I

    move-result v0

    return v0
.end method

.method public static getSupportedFormats()Ljava/lang/String;
    .locals 7

    .prologue
    .line 233
    invoke-static {}, Lcom/alivc/component/capture/VideoPusher;->getSupportedFormats()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 236
    const/4 v3, 0x0

    .line 247
    :cond_0
    return-object v3

    .line 238
    :cond_1
    const/4 v3, 0x0

    .line 239
    .local v3, "strFmt":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 240
    .local v0, "fmt":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/alivc/component/capture/JNIUtils;->VideoFormatToNative(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 241
    .local v2, "nativeFmt":Ljava/lang/Integer;
    if-nez v3, :cond_2

    .line 242
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 244
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    goto :goto_0
.end method

.method public static getSupportedResolutions(I)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # I

    .prologue
    .line 215
    invoke-static {p0}, Lcom/alivc/component/capture/VideoPusher;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_1

    .line 218
    const/4 v2, 0x0

    .line 228
    :cond_0
    return-object v2

    .line 220
    :cond_1
    const/4 v2, 0x0

    .line 221
    .local v2, "strSize":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 222
    .local v0, "size":Landroid/hardware/Camera$Size;
    if-nez v2, :cond_2

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 225
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    goto :goto_0
.end method

.method private native onData([BJIIIII)I
.end method

.method private native onStarted()I
.end method

.method private native onStopped()I
.end method

.method private native onTexture(JIIIII)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->destroy()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    .line 103
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    .line 104
    return-void
.end method

.method public getCurrentExposureCompensation()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getCurrentExposure()I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentZoom()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getCurrentZoom()I

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxZoom()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI getMaxZoom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoPusher;->getMaxZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getMaxZoom()I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransformMatrix([F)V
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->getTransformMatrix([F)V

    .line 211
    :cond_0
    return-void
.end method

.method public getVideoHandler()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    return-wide v0
.end method

.method public init(IIIIIIZZLandroid/content/Context;)V
    .locals 10
    .param p1, "source"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "rotation"    # I
    .param p6, "customRotation"    # I
    .param p7, "surfaceMode"    # Z
    .param p8, "focusBySensor"    # Z
    .param p9, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI init source "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", widht "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alivc/component/capture/VideoPusher;->init(IIIIIIZZLandroid/content/Context;)V

    .line 53
    :cond_0
    return-void
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isPreviewRunning()Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportAutoFocus()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isSupportAutoFocus()Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFlash()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isSupportFlash()Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause(Z)V
    .locals 2
    .param p1, "useEmptyData"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI pause "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->pause(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public resume()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 78
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v2, :cond_0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoPusher;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v1, 0x0

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoFocus(ZFF)V
    .locals 3
    .param p1, "auto"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI setAutoFocus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setAutoFocus(Z)V

    .line 132
    cmpl-float v0, p2, v2

    if-gtz v0, :cond_0

    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p2, p3}, Lcom/alivc/component/capture/VideoPusher;->setFocus(FF)V

    .line 136
    :cond_1
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 2
    .param p1, "exposure"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI setExposureCompensation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setExposure(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v1, p1}, Lcom/alivc/component/capture/VideoPusher;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTorch(Z)V
    .locals 2
    .param p1, "on"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI setTorch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setFlashOn(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .param p1, "zoom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VideoPusherJNI setzoom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setZoom(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public start(I)I
    .locals 3
    .param p1, "surfaceId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 57
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v2, :cond_0

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v2, p1}, Lcom/alivc/component/capture/VideoPusher;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v1, 0x0

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->stop()V

    .line 95
    :cond_0
    return-void
.end method

.method public switchCamera()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoPusher;->switchCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateTexImage()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->updateTexImage()I

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
