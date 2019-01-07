.class public Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "FaceRecognition2.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/IFaceRecognition;


# static fields
.field private static final MODULE:Ljava/lang/String; = "facebox2"

.field private static final UPLOAD_IMAGE_PATH_NULL_CODE:I = 0x1adb3

.field private static final UPLOAD_IMAGE_PATH_NULL_MSG:Ljava/lang/String; = "path is null"

.field private static final UPLOAD_IMAGE_TIME_OUT_CODE:I = 0x1adb8

.field private static final UPLOAD_IMAGE_TIME_OUT_MSG:Ljava/lang/String; = "time out"


# instance fields
.field private mIsCaptureCompress:Z

.field private mRetry:Z

.field private resuming:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->mIsCaptureCompress:Z

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->mRetry:Z

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->resuming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->mIsCaptureCompress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->mRetry:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p6, "x6"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p9, "x9"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 60
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p6, "x6"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->handleImageUploadFinished(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;JJLjava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Z

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->commitUploadImageUTData(JJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/wukong/upload/UploadParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->getUploadParams(Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v0

    return-object v0
.end method

.method private commitUploadImageUTData(JJLjava/lang/String;Z)V
    .locals 5
    .param p1, "size"    # J
    .param p3, "interval"    # J
    .param p5, "errCode"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z

    .prologue
    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "retry"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "jsapi_biz_util_image_upload_succ"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 401
    return-void

    .line 396
    :cond_0
    const-string/jumbo v1, "size"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v1, "interval"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private compressUrl(Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 213
    const-string/jumbo v4, ""

    .line 214
    .local v4, "resultUrl":Ljava/lang/String;
    invoke-static {}, Lgzp;->a()Lgzm;

    move-result-object v1

    .line 215
    .local v1, "mCompressor":Lgzm;
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->mIsCaptureCompress:Z

    if-eqz v5, :cond_1

    .line 216
    iget v5, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 217
    .local v3, "resize":F
    iget v5, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    int-to-float v5, v5

    div-float v2, v5, v6

    .line 218
    .local v2, "quality":F
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v4

    .line 227
    .end local v2    # "quality":F
    .end local v3    # "resize":F
    :cond_0
    :goto_0
    return-object v4

    .line 221
    :cond_1
    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->mIsCaptureCompress:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v1, p1, v5}, Lgzm;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 221
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v11, 0xe

    .line 177
    if-nez p1, :cond_0

    .line 178
    const-string/jumbo v0, "facebox2"

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getRealFilePath uri is null"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-object v3

    .line 182
    :cond_0
    const/4 v9, 0x0

    .line 183
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "scheme":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 186
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    move-object v3, v9

    .line 209
    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 189
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 191
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 192
    .local v7, "actualimagecursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 194
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 196
    .local v6, "actual_image_column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 197
    .end local v6    # "actual_image_column_index":I
    :catch_0
    move-exception v8

    .line 198
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 199
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 200
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 203
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_4

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getUploadParams(Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/wukong/upload/UploadParams;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 2058
    .local v0, "params":Lcom/alibaba/wukong/upload/UploadParams;
    iput-object p1, v0, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 328
    iget v1, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->expiredTime:I

    if-lez v1, :cond_0

    .line 329
    iget v1, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->expiredTime:I

    .line 2108
    iput v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->g:I

    .line 331
    :cond_0
    return-object v0
.end method

.method private handleAttachmentResult(Lorg/json/JSONObject;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 492
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 494
    .local v1, "response":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    invoke-static {}, Lhrp;->a()V

    .line 500
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 501
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 6
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "requestId"    # Ljava/lang/String;
    .param p5, "errorCode"    # I
    .param p6, "errorDesc"    # Ljava/lang/String;
    .param p7, "isRetry"    # Z
    .param p8, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p9, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
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
            "Z",
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 456
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "doUploadFile fail "

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 457
    const-string/jumbo v2, "requestId="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 458
    const-string/jumbo v2, "errorCode="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 459
    const-string/jumbo v2, "errorDesc="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 460
    const-string/jumbo v2, "isRetry="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 461
    const-string/jumbo v2, "imgNum="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 462
    const-string/jumbo v2, "endTime="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 463
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "sb":Ljava/lang/String;
    const-string/jumbo v2, "facebox2"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    .line 466
    invoke-static {}, Lhrp;->a()V

    .line 467
    invoke-direct {p0, p1, v1, p8, p9}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->uploadImageListFail(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 469
    :cond_0
    return-void

    .line 461
    .end local v1    # "sb":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    goto :goto_0
.end method

.method private handleImageUploadFinished(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 9
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p6, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
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
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectResult;",
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

    .line 407
    :try_start_0
    invoke-static {p4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "remoteUrl":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1    # "remoteUrl":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    .line 415
    invoke-static {}, Lhrp;->a()V

    .line 416
    const-string/jumbo v2, "facebox2"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

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

    .line 417
    invoke-direct {p0, p1, p5, p6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->uploadImageListSuccess(Ljava/util/List;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 419
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v2, "facebox2"

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "MediaIdEncodingException "

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 9
    .param p3, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p6, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
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
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "extData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "runtime_cache_action_face_recognition"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 507
    return-void
.end method

.method private uploadDataReceived(Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 10
    .param p1, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1031
    const/4 v4, 0x0

    invoke-static {v0, v4, v7}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 149
    const-string/jumbo v0, "facebox2"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "[FaceRecognition2.uploadDataReceived] ret req="

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    iget-object v4, p2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    .line 152
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v4, "f_face_attention_check_call_id"

    .line 1083
    invoke-virtual {v0, v4, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "facebox2"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[FaceRecognition2.uploadDataReceived]"

    aput-object v6, v5, v8

    const-string/jumbo v6, ", uploadDataReceived callbackId invalid srcCallId:"

    aput-object v6, v5, v7

    iget-object v6, p2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const-string/jumbo v7, " resultCallId:"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 154
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "facebox2"

    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[FaceRecognition2.uploadDataReceived] Shuiyin camera return null"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->compressUrl(Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string/jumbo v4, "facebox2"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v0, "[FaceRecognition2.uploadDataReceived] Util path path="

    aput-object v0, v6, v8

    if-eqz v1, :cond_2

    move-object v0, v1

    :goto_1
    aput-object v0, v6, v7

    .line 167
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    goto :goto_0

    .line 166
    .end local v2    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 22
    .param p1, "path"    # Ljava/lang/String;
    .param p4, "imgNum"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p6, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
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
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "ddResUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "facebox2"

    sget-object v7, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[FaceRecognition2.uploadImage] start "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 235
    .local v18, "firstStartTime":J
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 237
    .local v16, "firstSize":J
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    const-string/jumbo v8, "-1"

    const v9, 0x1adb3

    const-string/jumbo v10, "path is null"

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v4 .. v13}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->handleImageUploadFail(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 240
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "110003"

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->commitUploadImageUTData(JJLjava/lang/String;Z)V

    .line 323
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v5, 0x1

    new-array v6, v5, [Z

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v6, v5

    .line 250
    .local v6, "isFinished":[Z
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 271
    .local v4, "timeoutRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p5

    iget v5, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->uploadTime:I

    if-lez v5, :cond_1

    .line 272
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p5

    iget v7, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->uploadTime:I

    int-to-long v8, v7

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_1
    invoke-static {}, Lify;->a()Lify;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->getUploadParams(Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v21

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v20, p1

    invoke-direct/range {v7 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/lang/Runnable;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;JJLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v7}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifw;)V

    goto :goto_0
.end method

.method private uploadImageListFail(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 6
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p4, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 474
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz p4, :cond_0

    .line 475
    :try_start_0
    const-string/jumbo v4, "smileFaceScore"

    iget-object v5, p4, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 478
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_1

    .line 479
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 480
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->handleAttachmentResult(Lorg/json/JSONObject;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V

    .line 489
    return-void
.end method

.method private uploadImageListSuccess(Ljava/util/List;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 11
    .param p2, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .param p3, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            "Lcom/alibaba/dingtalk/facebox/model/DetectResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 422
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 424
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 425
    :try_start_0
    const-string/jumbo v4, "smileFaceScore"

    iget-object v5, p3, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string/jumbo v4, "photoStatus"

    iget v5, p3, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->photoStatus:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 429
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 430
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

    .line 431
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, "facebox2"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "callback req "

    aput-object v7, v6, v9

    iget-object v7, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->resuming:Z

    if-eqz v4, :cond_2

    .line 443
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->sendBroadcast(Ljava/lang/String;)V

    .line 444
    iput-boolean v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->resuming:Z

    .line 450
    :goto_2
    return-void

    .line 434
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 446
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v4, "facebox2"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "runtime cache sendBroadcast cancel"

    aput-object v7, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p2, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public detectFace(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x64

    .line 84
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/facebox/model/DetectObject;-><init>(Lorg/json/JSONObject;)V

    .line 85
    .local v0, "detectObject":Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    .line 88
    iget v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    if-gt v1, v2, :cond_0

    iget v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    if-gtz v1, :cond_1

    .line 89
    :cond_0
    iput v2, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    .line 91
    :cond_1
    iget v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    if-gtz v1, :cond_3

    .line 92
    :cond_2
    const/16 v1, 0x55

    iput v1, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    .line 96
    :cond_3
    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->clear()V

    .line 97
    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->save(Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V

    .line 99
    const-string/jumbo v1, "facebox2"

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "detectFace callbackId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 100
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V

    .line 104
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1
.end method

.method public handle(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    const-string/jumbo v4, "action_face_box_face_detected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->queryDetectObject()Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    move-result-object v0

    .line 126
    .local v0, "detectObject":Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v4, "facebox2"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[FaceRecognition2.handle]"

    aput-object v7, v6, v3

    const-string/jumbo v3, ", detectObject is null"

    aput-object v3, v6, v2

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0    # "detectObject":Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    :goto_0
    return v2

    .line 131
    .restart local v0    # "detectObject":Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    :cond_0
    const-string/jumbo v4, "intent_key_face_box_face_detect_result"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 132
    .local v1, "detectResult":Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    if-eqz v1, :cond_1

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->uploadDataReceived(Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 139
    :goto_1
    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->clear()V

    goto :goto_0

    .line 135
    :cond_1
    const-string/jumbo v4, "facebox2"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[FaceRecognition2.handle]"

    aput-object v7, v6, v3

    const-string/jumbo v3, ", detectResult is null"

    aput-object v3, v6, v2

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x3

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "detectObject":Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .end local v1    # "detectResult":Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    :cond_2
    move v2, v3

    .line 143
    goto :goto_0
.end method

.method public init(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 78
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 110
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->queryDetectObject()Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    move-result-object v0

    .line 111
    .local v0, "detectObject":Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->queryDetectResult()Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-result-object v1

    .line 112
    .local v1, "detectResult":Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->uploadDataReceived(Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 114
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->clear()V

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->resuming:Z

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->resuming:Z

    goto :goto_0
.end method
