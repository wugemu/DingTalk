.class public Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Audio.java"


# static fields
.field private static final AUDIO_DOWNLOAD_DIR:Ljava/lang/String; = "JS_AUDIO"

.field public static final BUFFER_SIZE:I = 0x400

.field private static final ENTITYID_PREFIX:Ljava/lang/String; = "open_api_"


# instance fields
.field private mAudioManager:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

.field private mCurrentPlayLocalId:Ljava/lang/String;

.field private mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private mPlayEndCallbackId:Ljava/lang/String;

.field private mRecordCallbackId:Ljava/lang/String;

.field private mStopRecordCallbackId:Ljava/lang/String;

.field private mTranslateCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->createRecordFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->inputStream2File(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Lcom/alibaba/lightapp/runtime/plugin/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mAudioManager:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mStopRecordCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mStopRecordCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->uploadVoice([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mRecordCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mRecordCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mTranslateCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildDownloadAudioValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mPlayEndCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mPlayEndCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private buildDownloadAudioValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 527
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "localAudioId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-object v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private buildPlayAudioState(I)Lorg/json/JSONObject;
    .locals 3
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 512
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 515
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-object v1

    .line 516
    :catch_0
    move-exception v0

    .line 517
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
    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "dir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "state":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    const/4 v3, 0x0

    .line 556
    .local v3, "sdcardPath":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 558
    .local v2, "extDir":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 559
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 569
    .end local v2    # "extDir":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string/jumbo v5, "JS_AUDIO"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 572
    const/4 v1, 0x0

    .line 576
    .end local v3    # "sdcardPath":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "appPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string/jumbo v5, "JS_AUDIO"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 581
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 586
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

    .line 565
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
    .line 546
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 549
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
    .line 590
    const/4 v2, 0x0

    .line 592
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 595
    .local v0, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 599
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 600
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 603
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 604
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 610
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 611
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 612
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 609
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "read":I
    :cond_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 610
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 611
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 612
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 605
    .end local v4    # "read":I
    :catch_1
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 609
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 610
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 611
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .line 609
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 610
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 611
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v5

    .line 609
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 605
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 603
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

    .line 537
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 543
    return-void
.end method

.method private varargs uploadVoice([Ljava/lang/String;)V
    .locals 2
    .param p1, "callbackIds"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->showLoadingDialog()V

    .line 454
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mAudioManager:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->uploadFile(Lifw;)V

    .line 509
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

    .line 70
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "mediaId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "mediaId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 73
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildDownloadAudioValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "mediaId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    return-object v5

    .line 75
    .restart local v1    # "localPath":Ljava/lang/String;
    .restart local v2    # "mediaId":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "remoteUrl":Ljava/lang/String;
    const-string/jumbo v5, "REQUEST"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 78
    .local v4, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v4, v3}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;

    invoke-direct {v6, p0, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 118
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Request;->start()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 121
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "mediaId":Ljava/lang/String;
    .end local v3    # "remoteUrl":Ljava/lang/String;
    .end local v4    # "request":Lcom/alibaba/doraemon/request/Request;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 126
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 64
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mAudioManager:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    .line 65
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    .line 618
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mAudioManager:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mAudioManager:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->stop()V

    .line 621
    :cond_0
    return-void
.end method

.method public onPlayEnd(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 194
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mPlayEndCallbackId:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public onRecordEnd(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 344
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mRecordCallbackId:Ljava/lang/String;

    .line 345
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public pause(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 228
    :try_start_0
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "localAudioId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "localAudioId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mCurrentPlayLocalId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "localAudioId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2

    .line 240
    .restart local v1    # "localAudioId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    :try_start_1
    const-string/jumbo v3, "localId not equal the current Playing localId"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    .end local v1    # "localAudioId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 245
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 134
    :try_start_0
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "localAudioId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mCurrentPlayLocalId:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mCurrentPlayLocalId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "localPath":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2

    .line 181
    .restart local v1    # "localPath":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    :try_start_1
    const-string/jumbo v3, "play error because the mediaId can not found"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    .end local v1    # "localPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 201
    :try_start_0
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "localAudioId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "localAudioId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mCurrentPlayLocalId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "localAudioId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2

    .line 213
    .restart local v1    # "localAudioId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    :try_start_1
    const-string/jumbo v3, "localId not equal the current Playing localId"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    .end local v1    # "localAudioId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public stop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 255
    :try_start_0
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "localAudioId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "localAudioId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mCurrentPlayLocalId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$5;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1    # "localAudioId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2

    .line 267
    .restart local v1    # "localAudioId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    :try_start_1
    const-string/jumbo v3, "localId not equal the current Playing localId"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 270
    .end local v1    # "localAudioId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 272
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 330
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mStopRecordCallbackId:Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$7;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public translateVoice(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 391
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mTranslateCallbackId:Ljava/lang/String;

    .line 392
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "mediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "mediaId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string/jumbo v1, "MediaId is empty"

    invoke-static {v10, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mTranslateCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    .line 449
    :goto_0
    return-object v1

    .line 397
    :cond_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 398
    .local v8, "duration":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 399
    .local v0, "durationMs":I
    if-gtz v0, :cond_1

    .line 400
    const-string/jumbo v1, "Duration is equal or lesser than zero"

    invoke-static {v10, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->mTranslateCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "open_api_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "entityId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/VoiceTranslate;->getInstance()Lcom/alibaba/wukong/im/VoiceTranslate;

    move-result-object v1

    int-to-long v4, v0

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/wukong/im/VoiceTranslate;->translateVoice(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 421
    invoke-static {}, Lcom/alibaba/wukong/im/VoiceTranslate;->getInstance()Lcom/alibaba/wukong/im/VoiceTranslate;

    move-result-object v1

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/wukong/im/VoiceTranslate;->addVoiceTranslateEventListener(Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;)V

    .line 449
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0
.end method
