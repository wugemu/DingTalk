.class public Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;
.super Ljava/lang/Object;
.source "APFDServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/face/api/APFDService;


# instance fields
.field private a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

.field private b:Lcom/megvii/livenessdetection/Detector;

.field private c:Landroid/content/Context;

.field private d:Lcom/megvii/livenessdetection/Detector$DetectionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl$1;-><init>(Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->d:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;)Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    return-object v0
.end method

.method public static getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFilename"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "fileContext":[B
    const/4 v2, 0x0

    .line 121
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->input2byte(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 127
    if-eqz v2, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 136
    :cond_0
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v3, "APFDService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    if-eqz v2, :cond_0

    .line 129
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v3

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 129
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    :cond_1
    :goto_1
    throw v3

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static final input2byte(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v4, "swapStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 143
    .local v0, "buff":[B
    const/4 v2, 0x0

    .line 145
    .local v2, "in2b":[B
    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "rc":I
    if-lez v3, :cond_0

    .line 146
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v3    # "rc":I
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 153
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    return-object v2

    .line 148
    .restart local v3    # "rc":I
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 149
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public closeService()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector;->release()V

    .line 108
    iput-object v1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    .line 112
    iput-object v1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->c:Landroid/content/Context;

    .line 114
    const/16 v0, 0x64

    return v0
.end method

.method public detectFace([BIII)V
    .locals 1
    .param p1, "yuvDate"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/megvii/livenessdetection/Detector;->doDetection([BIII)Z

    .line 102
    :cond_0
    return-void
.end method

.method public initService(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x67

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "context can\'t be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->c:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    invoke-direct {v1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;-><init>()V

    .line 62
    .local v1, "configBuilder":Lcom/megvii/livenessdetection/DetectionConfig$Builder;
    const v6, 0x36ee80

    invoke-virtual {v1, v6}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->setDetectionTimeout(I)Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    .line 63
    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->setMinFaceSize(I)Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    .line 64
    invoke-virtual {v1}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->build()Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v0

    .line 65
    .local v0, "config":Lcom/megvii/livenessdetection/DetectionConfig;
    new-instance v6, Lcom/megvii/livenessdetection/Detector;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->c:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/megvii/livenessdetection/Detector;-><init>(Landroid/content/Context;Lcom/megvii/livenessdetection/DetectionConfig;)V

    iput-object v6, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    .line 66
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->d:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    invoke-virtual {v6, v7}, Lcom/megvii/livenessdetection/Detector;->setDetectionListener(Lcom/megvii/livenessdetection/Detector$DetectionListener;)V

    .line 67
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    sget-object v7, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v6, v7}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 68
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v6}, Lcom/megvii/livenessdetection/Detector;->reset()V

    .line 70
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->c:Landroid/content/Context;

    const-string/jumbo v7, "face_model"

    invoke-static {v6, v7}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    .line 72
    .local v4, "modelData":[B
    if-nez v4, :cond_2

    .line 73
    const-string/jumbo v6, "APFDService"

    const-string/jumbo v7, "face detect error: can\'t find model"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    :goto_0
    return v5

    .line 77
    :cond_2
    const/4 v3, 0x0

    .line 79
    .local v3, "isInitSuc":Z
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->b:Lcom/megvii/livenessdetection/Detector;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->c:Landroid/content/Context;

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v4, v8}, Lcom/megvii/livenessdetection/Detector;->init(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 84
    :goto_1
    if-eqz v3, :cond_1

    .line 85
    const/16 v5, 0x64

    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public setDelegate(Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;->a:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    .line 94
    return-void
.end method
