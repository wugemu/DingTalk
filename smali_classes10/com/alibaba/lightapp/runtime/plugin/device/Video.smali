.class public Lcom/alibaba/lightapp/runtime/plugin/device/Video;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Video.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x400

.field private static final DEFAULT_MAX_DURATION:I = 0x1e

.field private static final REQUEST_CODE_VIDEO_RECORD:I = 0xa

.field private static final VIDEO_DOWNLOAD_DIR:Ljava/lang/String; = "JS_VIDEO"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mCurrentPlayLocalId:Ljava/lang/String;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mPlayEndCallbackId:Ljava/lang/String;

.field private mRecordCallbackId:Ljava/lang/String;

.field private mVideoDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 65
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mVideoDuration:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mVideoDuration:I

    return v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->uploadVideo(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mRecordCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->createRecordFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->inputStream2File(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->buildDownloadAudioValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->showLoadingDialog()V

    return-void
.end method

.method private buildDownloadAudioValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "localVideoId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private createRecordFile()Ljava/io/File;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "dir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "state":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "sdcardPath":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 209
    .local v2, "extDir":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 220
    .end local v2    # "extDir":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string/jumbo v5, "JS_VIDEO"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 223
    const/4 v1, 0x0

    .line 227
    .end local v3    # "sdcardPath":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "appPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string/jumbo v5, "JS_VIDEO"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 237
    .end local v0    # "appPath":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "record"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".amr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v5

    .line 216
    .restart local v3    # "sdcardPath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    :cond_0
    return-void
.end method

.method private inputStream2File(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 243
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 246
    .local v0, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 251
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 252
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 255
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 256
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 262
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 261
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "read":I
    :cond_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 262
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 264
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 257
    .end local v4    # "read":I
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 262
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 262
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v5

    .line 261
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 257
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 255
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private showLoadingDialog()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 377
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 383
    return-void
.end method

.method private uploadVideo(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "videoRecordUrl"    # Ljava/lang/String;
    .param p2, "videoThumbUrl"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .param p4, "videoSize"    # J

    .prologue
    .line 342
    invoke-static {}, Lify;->a()Lify;

    move-result-object v6

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;IJ)V

    invoke-virtual {v6, p1, v0}, Lify;->a(Ljava/lang/String;Lifw;)V

    .line 373
    return-void
.end method


# virtual methods
.method public download(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    .line 99
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "mediaId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "mediaId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->buildDownloadAudioValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "mediaId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    return-object v5

    .line 104
    .restart local v1    # "localPath":Ljava/lang/String;
    .restart local v2    # "mediaId":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "remoteUrl":Ljava/lang/String;
    const-string/jumbo v5, "REQUEST"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 107
    .local v4, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v4, v3}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/device/Video$2;

    invoke-direct {v6, p0, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Video$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 147
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Request;->start()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "mediaId":Ljava/lang/String;
    .end local v3    # "remoteUrl":Ljava/lang/String;
    .end local v4    # "request":Lcom/alibaba/doraemon/request/Request;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 155
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 271
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 272
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 339
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mContext:Landroid/app/Activity;

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context must be activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    .line 163
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "localAudioId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mCurrentPlayLocalId:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mCurrentPlayLocalId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "localPath":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "vidoeSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    .line 166
    .local v4, "videoSize":J
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "videoThumbUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "videoThumbUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v3    # "localPath":Ljava/lang/String;
    .end local v4    # "videoSize":J
    .end local v6    # "videoThumbUrl":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 179
    .restart local v3    # "localPath":Ljava/lang/String;
    .restart local v4    # "videoSize":J
    .restart local v6    # "videoThumbUrl":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x3

    :try_start_1
    const-string/jumbo v2, "play error because the mediaId can not found"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 182
    .end local v3    # "localPath":Ljava/lang/String;
    .end local v4    # "videoSize":J
    .end local v6    # "videoThumbUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA",
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "maxDuration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mVideoDuration:I

    .line 81
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mRecordCallbackId:Ljava/lang/String;

    .line 82
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mVideoDuration:I

    if-gtz v0, :cond_0

    .line 83
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->mVideoDuration:I

    .line 85
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method
