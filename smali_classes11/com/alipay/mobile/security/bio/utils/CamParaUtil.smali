.class public Lcom/alipay/mobile/security/bio/utils/CamParaUtil;
.super Ljava/lang/Object;
.source "CamParaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;
    }
.end annotation


# static fields
.field private static b:Lcom/alipay/mobile/security/bio/utils/CamParaUtil;


# instance fields
.field private a:Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->b:Lcom/alipay/mobile/security/bio/utils/CamParaUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;-><init>(Lcom/alipay/mobile/security/bio/utils/CamParaUtil;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a:Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;

    .line 21
    return-void
.end method

.method private static a(Landroid/hardware/Camera$Size;F)F
    .locals 4
    .param p0, "s"    # Landroid/hardware/Camera$Size;
    .param p1, "rate"    # F

    .prologue
    .line 120
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 121
    .local v1, "r":F
    sub-float v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 122
    .local v0, "delt":F
    return v0
.end method

.method public static getCameraResolution()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v2, "cameraResolution":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 211
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 212
    .local v3, "cameracount":I
    const/4 v4, 0x0

    .local v4, "cameranum":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 213
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 214
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 215
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 216
    iget v9, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 217
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 218
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 219
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 220
    .local v8, "size":Landroid/hardware/Camera$Size;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "resolution":Ljava/lang/String;
    const-string/jumbo v9, "frontCamera"

    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v6    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v7    # "resolution":Ljava/lang/String;
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 212
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget v9, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 224
    .restart local v6    # "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 225
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 226
    .restart local v8    # "size":Landroid/hardware/Camera$Size;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 227
    .restart local v7    # "resolution":Ljava/lang/String;
    const-string/jumbo v9, "backCamera"

    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "cameracount":I
    .end local v4    # "cameranum":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v6    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v7    # "resolution":Ljava/lang/String;
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v9

    .line 238
    :cond_3
    return-object v2
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/security/bio/utils/CamParaUtil;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->b:Lcom/alipay/mobile/security/bio/utils/CamParaUtil;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;-><init>()V

    .line 26
    sput-object v0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->b:Lcom/alipay/mobile/security/bio/utils/CamParaUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->b:Lcom/alipay/mobile/security/bio/utils/CamParaUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public equalRate(Landroid/hardware/Camera$Size;F)Z
    .locals 6
    .param p1, "s"    # Landroid/hardware/Camera$Size;
    .param p2, "rate"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 127
    .local v0, "r":F
    sub-float v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPropPictureSize(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    .locals 6
    .param p2, "th"    # F
    .param p3, "minWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;FI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_0

    .line 78
    const/4 v4, 0x0

    .line 116
    :goto_0
    return-object v4

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a:Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "i":I
    const/4 v1, 0x0

    .line 85
    .local v1, "delt":F
    const/4 v0, 0x0

    .line 87
    .local v0, "chooseIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 94
    .local v3, "s":Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, p3, :cond_2

    .line 96
    if-nez v0, :cond_1

    .line 98
    invoke-static {v3, p2}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a(Landroid/hardware/Camera$Size;F)F

    move-result v1

    .line 99
    move v0, v2

    .line 102
    :cond_1
    invoke-static {v3, p2}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a(Landroid/hardware/Camera$Size;F)F

    move-result v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 104
    invoke-static {v3, p2}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a(Landroid/hardware/Camera$Size;F)F

    move-result v1

    .line 105
    move v0, v2

    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_1

    .line 116
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    goto :goto_0
.end method

.method public getPropPreviewSize(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    .locals 4
    .param p2, "th"    # F
    .param p3, "minWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;FI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_0

    .line 35
    const/4 v2, 0x0

    .line 51
    :goto_0
    return-object v2

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a:Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 42
    .local v1, "s":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, p3, :cond_3

    invoke-virtual {p0, v1, p2}, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->equalRate(Landroid/hardware/Camera$Size;F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PreviewSize:w = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 48
    .end local v1    # "s":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 51
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    goto :goto_0

    .line 46
    .restart local v1    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_1
.end method

.method public getPropPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 4
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_1

    .line 57
    const/4 v1, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/utils/CamParaUtil;->a:Lcom/alipay/mobile/security/bio/utils/CamParaUtil$CameraSizeComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "suitableSize":Landroid/hardware/Camera$Size;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 64
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, p2, :cond_2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v3, p3, :cond_2

    .line 65
    move-object v1, v0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PreviewSize:w = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printSupportFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 194
    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, "mode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "focusModes--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printSupportPictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_1

    .line 179
    :cond_0
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 177
    .local v2, "size":Landroid/hardware/Camera$Size;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pictureSizes:width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printSupportPreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_1

    .line 163
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 160
    .local v2, "size":Landroid/hardware/Camera$Size;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "previewSizes:width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
