.class public Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "FaceRecognition.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;


# static fields
.field private static final MODULE:Ljava/lang/String; = "facebox"

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_IMAGE_PATH_NULL_CODE:I = 0x1adb3

.field private static final UPLOAD_IMAGE_PATH_NULL_MSG:Ljava/lang/String; = "path is null"

.field private static final UPLOAD_IMAGE_TIME_OUT_CODE:I = 0x1adb8

.field private static final UPLOAD_IMAGE_TIME_OUT_MSG:Ljava/lang/String; = "time out"


# instance fields
.field private mCallCallbackId:Ljava/lang/String;

.field private mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

.field private mExpiredTime:I

.field private mIsCaptureCompress:Z

.field private mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

.field private mPluginError:Z

.field private mQuality:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResize:I

.field private mRetry:Z

.field private mRetryResize:I

.field private mStartTime:J

.field private mUploadTime:I

.field private retryQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mIsCaptureCompress:Z

    .line 91
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mRetry:Z

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mPluginError:Z

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mStartTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .prologue
    .line 79
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mPluginError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->handleImageUploadFinished(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;JJLjava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Z

    .prologue
    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->commitUploadImageUTData(JJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 79
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mRetryResize:I

    return v0
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 79
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->retryQuality:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->uploadDataReceived(Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mIsCaptureCompress:Z

    return v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mRetry:Z

    return v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    return-void
.end method

.method private commit()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 367
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 368
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "isSuccess"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 369
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 370
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "upload_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 371
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SmartWork"

    const-string/jumbo v4, "face_recognition"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 373
    .end local v0    # "dimension":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    return-void
.end method

.method private commitUploadImageUTData(JJLjava/lang/String;Z)V
    .locals 5
    .param p1, "size"    # J
    .param p3, "interval"    # J
    .param p5, "errCode"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z

    .prologue
    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "retry"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "jsapi_biz_util_image_upload_succ"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 517
    return-void

    .line 512
    :cond_0
    const-string/jumbo v1, "size"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v1, "interval"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private compressUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 523
    const-string/jumbo v4, ""

    .line 524
    .local v4, "resultUrl":Ljava/lang/String;
    invoke-static {}, Lgzp;->a()Lgzm;

    move-result-object v1

    .line 525
    .local v1, "mCompressor":Lgzm;
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mIsCaptureCompress:Z

    if-eqz v5, :cond_1

    .line 526
    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mResize:I

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 527
    .local v3, "resize":F
    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mQuality:I

    int-to-float v5, v5

    div-float v2, v5, v6

    .line 528
    .local v2, "quality":F
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v4

    .line 537
    .end local v2    # "quality":F
    .end local v3    # "resize":F
    :cond_0
    :goto_0
    return-object v4

    .line 531
    :cond_1
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mIsCaptureCompress:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v1, p1, v5}, Lgzm;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 532
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 531
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0xe

    .line 541
    if-nez p1, :cond_0

    .line 542
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getRealFilePath uri is null"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_0
    return-object v3

    .line 546
    :cond_0
    const/4 v9, 0x0

    .line 547
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, "scheme":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 550
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    move-object v3, v9

    .line 573
    goto :goto_0

    .line 551
    :cond_2
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 553
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 555
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 556
    .local v7, "actualimagecursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 558
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 559
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 560
    .local v6, "actual_image_column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 561
    .end local v6    # "actual_image_column_index":I
    :catch_0
    move-exception v8

    .line 562
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 563
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 564
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 567
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_4

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 2058
    .local v0, "params":Lcom/alibaba/wukong/upload/UploadParams;
    iput-object p1, v0, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 388
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mExpiredTime:I

    if-lez v1, :cond_0

    .line 389
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mExpiredTime:I

    .line 2108
    iput v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->g:I

    .line 391
    :cond_0
    return-object v0
.end method

.method private handleAttachmentResult(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 491
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 493
    .local v1, "response":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    invoke-static {}, Lhrp;->a()V

    .line 499
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 501
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "requestId"    # Ljava/lang/String;
    .param p5, "errorCode"    # I
    .param p6, "errorDesc"    # Ljava/lang/String;
    .param p7, "isRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 451
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "doUploadFile fail "

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 452
    const-string/jumbo v2, "requestId="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 453
    const-string/jumbo v2, "errorCode="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 454
    const-string/jumbo v2, "errorDesc="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 455
    const-string/jumbo v2, "isRetry="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 456
    const-string/jumbo v2, "imgNum="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 457
    const-string/jumbo v2, "endTime="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 458
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "sb":Ljava/lang/String;
    const-string/jumbo v2, "facebox"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    .line 461
    invoke-static {}, Lhrp;->a()V

    .line 462
    invoke-direct {p0, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->uploadImageListFail(Ljava/util/List;Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void

    .line 456
    .end local v1    # "sb":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    goto :goto_0
.end method

.method private handleImageUploadFinished(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 9
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 325
    :try_start_0
    invoke-static {p4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "remoteUrl":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "remoteUrl":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    .line 333
    invoke-static {}, Lhrp;->a()V

    .line 334
    const-string/jumbo v2, "facebox"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "doUploadFile stop "

    aput-object v5, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->updaloadImageListSuccess(Ljava/util/List;)V

    .line 337
    :cond_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v2, "facebox"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "MediaIdEncodingException "

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_face_box_face_detected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 7
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 6
    .param p1, "extData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 376
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mPluginError:Z

    if-nez v1, :cond_0

    .line 377
    const-string/jumbo v1, "facebox"

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "runtime cache sendBroadcast cancel"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "runtime_cache_action_face_recognition"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    :cond_0
    return-void
.end method

.method private updaloadImageListSuccess(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    if-eqz v4, :cond_0

    .line 344
    const-string/jumbo v4, "smileFaceScore"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget-object v5, v5, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string/jumbo v4, "photoStatus"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget v5, v5, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->photoStatus:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 349
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, "facebox"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "callback req "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->sendBroadcast(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->commit()V

    .line 362
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 363
    return-void

    .line 353
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private uploadDataReceived(Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 10
    .param p1, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "onDataReceived"

    aput-object v6, v5, v8

    const-string/jumbo v6, ", detectResult is null"

    aput-object v6, v5, v7

    .line 190
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "onDataReceived ret req="

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, p1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    .line 196
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_face_attention_check_call_id"

    .line 1083
    invoke-virtual {v3, v4, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 196
    if-eqz v3, :cond_1

    .line 197
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "onDataReceived"

    aput-object v6, v5, v8

    const-string/jumbo v6, ", uploadDataReceived callbackId invalid srcCallId:"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const-string/jumbo v7, " resultCallId:"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 198
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v3, p1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const-string/jumbo v3, "facebox"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Shuiyin camera return null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_2
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->compressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string/jumbo v4, "facebox"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v3, "Util path path="

    aput-object v3, v6, v8

    if-eqz v1, :cond_3

    move-object v3, v1

    :goto_1
    aput-object v3, v6, v7

    .line 211
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2031
    const/4 v4, 0x0

    invoke-static {v3, v4, v7}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method private uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 18
    .param p1, "path"    # Ljava/lang/String;
    .param p4, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "facebox"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uploadImage start "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 231
    .local v14, "firstStartTime":J
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 234
    .local v12, "firstSize":J
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const-string/jumbo v6, "-1"

    const v7, 0x1adb3

    const-string/jumbo v8, "path is null"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 237
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "110003"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->commitUploadImageUTData(JJLjava/lang/String;Z)V

    .line 321
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Z

    const/4 v3, 0x0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v4, v3

    .line 247
    .local v4, "isFinished":[Z
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 268
    .local v2, "timeoutRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mUploadTime:I

    if-lez v3, :cond_1

    .line 269
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mUploadTime:I

    int-to-long v6, v5

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    :cond_1
    invoke-static {}, Lify;->a()Lify;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getUploadParams(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v17

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/lang/Runnable;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;JJLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifw;)V

    goto :goto_0
.end method

.method private uploadImageListFail(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 467
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    if-eqz v4, :cond_0

    .line 470
    const-string/jumbo v4, "smileFaceScore"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iget-object v5, v5, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 473
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_1

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 475
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->handleAttachmentResult(Lorg/json/JSONObject;)V

    .line 484
    return-void
.end method


# virtual methods
.method public detectFace(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x64

    .line 158
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/facebox/model/DetectObject;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    .line 161
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryResize:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mRetryResize:I

    .line 164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mResize:I

    .line 165
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mResize:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mResize:I

    if-gtz v0, :cond_1

    .line 166
    :cond_0
    iput v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mResize:I

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mQuality:I

    .line 171
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mQuality:I

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mQuality:I

    if-gtz v0, :cond_3

    .line 172
    :cond_2
    const/16 v0, 0x55

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mQuality:I

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryQuality:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->retryQuality:I

    .line 176
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->expiredTime:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mExpiredTime:I

    .line 177
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->uploadTime:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mUploadTime:I

    .line 179
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "detectFace callbackId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 180
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V

    .line 183
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 152
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 113
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->registerReceiver()V

    .line 114
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FaceRecognition onCreate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->unregisterReceiver()V

    .line 579
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 580
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FaceRecognition onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->mCallCallbackId:Ljava/lang/String;

    .line 582
    return-void
.end method
