.class public Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "CSpace.java"


# static fields
.field private static final PARAM_KEY_CORP_ID:Ljava/lang/String; = "corpId"

.field private static final PARAM_KEY_DENTRY_ID:Ljava/lang/String; = "dentryId"

.field private static final PARAM_KEY_DIR_ID:Ljava/lang/String; = "dirId"

.field private static final PARAM_KEY_FILE_ID:Ljava/lang/String; = "fileId"

.field private static final PARAM_KEY_FILE_NAME:Ljava/lang/String; = "fileName"

.field private static final PARAM_KEY_FILE_SIZE:Ljava/lang/String; = "fileSize"

.field private static final PARAM_KEY_FILE_TYPE:Ljava/lang/String; = "fileType"

.field private static final PARAM_KEY_IS_COPY:Ljava/lang/String; = "isCopy"

.field private static final PARAM_KEY_PATH:Ljava/lang/String; = "path"

.field private static final PARAM_KEY_SPACE_ID:Ljava/lang/String; = "spaceId"

.field private static final PARAM_KEY_TARGET_SPACE_ID:Ljava/lang/String; = "targetSpaceId"

.field private static final PARAM_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final PARAM_KEY_VERSION:Ljava/lang/String; = "version"

.field private static final PARAM_KEY_WATERMARK:Ljava/lang/String; = "watermark"

.field private static final PARAM_PREVIEW_MODE:Ljava/lang/String; = "mode"

.field private static final PARAM_PREVIEW_PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "biz.cspace"

.field private static final TYPE_FILE:Ljava/lang/String; = "file"

.field private static final TYPE_FOLDER:Ljava/lang/String; = "folder"


# instance fields
.field private mChooseSpaceDirCallbackName:Ljava/lang/String;

.field private mCopyCallbackName:Ljava/lang/String;

.field private mDeleteCallbackName:Ljava/lang/String;

.field private mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private mSaveToSpaceCallbackName:Ljava/lang/String;

.field private mSpaceOperationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mDeleteCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSaveToSpaceCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Ljava/util/List;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->initSaveFileCallBackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mChooseSpaceDirCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->initChooseSpaceDirCallbackValue(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mCopyCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private initChooseSpaceDirCallbackValue(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 550
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 552
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 553
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 554
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "spaceId"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string/jumbo v3, "path"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string/jumbo v3, "dirId"

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initSaveFileCallBackValue(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 569
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 570
    .local v3, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v3, :cond_0

    .line 571
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 572
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "spaceId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string/jumbo v5, "fileId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string/jumbo v5, "fileName"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string/jumbo v5, "fileSize"

    iget-wide v6, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 576
    const-string/jumbo v5, "fileType"

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 583
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v2
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSpaceOperationReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.savefile2space"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.choosespacedir"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.copy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSpaceOperationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 547
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSpaceOperationReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSpaceOperationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSpaceOperationReceiver:Landroid/content/BroadcastReceiver;

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseSpaceDir(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x8

    .line 354
    if-eqz p1, :cond_3

    .line 355
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 356
    .local v1, "args":Lorg/json/JSONObject;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mChooseSpaceDirCallbackName:Ljava/lang/String;

    .line 357
    if-eqz v1, :cond_3

    .line 359
    const-string/jumbo v5, "corpId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v4

    .line 362
    .local v4, "session":Lhqe$d;
    if-eqz v4, :cond_0

    .line 3488
    iget-object v5, v4, Lhqe$d;->b:Ljava/lang/String;

    .line 362
    if-eqz v5, :cond_0

    .line 4488
    iget-object v5, v4, Lhqe$d;->b:Ljava/lang/String;

    .line 363
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 364
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "invalid corpId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 388
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "args":Lorg/json/JSONObject;
    .end local v4    # "session":Lhqe$d;
    :goto_0
    return-object v5

    .line 367
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v1    # "args":Lorg/json/JSONObject;
    .restart local v4    # "session":Lhqe$d;
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 372
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v4    # "session":Lhqe$d;
    .local v2, "orgId":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_2

    .line 374
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "need corpId or invalid corpId"

    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 369
    .end local v2    # "orgId":J
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "orgId":J
    goto :goto_1

    .line 377
    :cond_2
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;

    invoke-direct {v5, p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;J)V

    invoke-virtual {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    .end local v1    # "args":Lorg/json/JSONObject;
    .end local v2    # "orgId":J
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0
.end method

.method public copy(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 18
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_1

    .line 273
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 274
    .local v2, "args":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mCopyCallbackName:Ljava/lang/String;

    .line 275
    if-eqz v2, :cond_1

    .line 276
    const-string/jumbo v16, "corpId"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "corpId":Ljava/lang/String;
    const-string/jumbo v16, "spaceId"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 278
    .local v15, "spaceId":Ljava/lang/String;
    const-string/jumbo v16, "fileId"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "fileId":Ljava/lang/String;
    const-string/jumbo v16, "fileName"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "fileName":Ljava/lang/String;
    const-string/jumbo v16, "fileSize"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 281
    .local v8, "fileSize":J
    const-string/jumbo v16, "fileType"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "fileType":Ljava/lang/String;
    new-instance v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 284
    .local v14, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iput-object v15, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 285
    iput-object v5, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 286
    iput-object v6, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 287
    iput-wide v8, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 288
    iput-object v7, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 290
    const-wide/16 v12, 0x0

    .line 291
    .local v12, "orgId":J
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 292
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 293
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 296
    :cond_0
    move-wide v10, v12

    .line 298
    .local v10, "finalOrgId":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 300
    const-string/jumbo v16, "space_transfer_src"

    const-string/jumbo v17, "app"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v16, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    .end local v2    # "args":Lorg/json/JSONObject;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileType":Ljava/lang/String;
    .end local v8    # "fileSize":J
    .end local v10    # "finalOrgId":J
    .end local v12    # "orgId":J
    .end local v14    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v15    # "spaceId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v16

    return-object v16
.end method

.method public delete(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 218
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 219
    :cond_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "null param"

    invoke-static {v6, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 264
    :goto_0
    return-object v3

    .line 222
    :cond_1
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "spaceId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "spaceId":Ljava/lang/String;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "dentryId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "dentryId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    :cond_2
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "null param"

    invoke-static {v6, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mDeleteCallbackName:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)V

    .line 258
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 259
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v4, v0, v5, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 262
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 264
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 469
    :cond_0
    return-void
.end method

.method public getPlayUrl(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v6, :cond_1

    .line 394
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    .line 447
    :goto_0
    return-object v6

    .line 397
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 399
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v6, "spaceId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "spaceId":Ljava/lang/String;
    const-string/jumbo v6, "fileId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "fileId":Ljava/lang/String;
    const-string/jumbo v6, "fileType"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "fileType":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 405
    .local v1, "callbackId":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Ljava/lang/String;)V

    .line 442
    .local v4, "listener":Lcma;, "Lcma<Lgra;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 443
    const-class v7, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v4, v7, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "listener":Lcma;, "Lcma<Lgra;>;"
    check-cast v4, Lcma;

    .line 445
    .restart local v4    # "listener":Lcma;, "Lcma<Lgra;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 447
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->registerReceiver()V

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->unregisterReceiver()V

    .line 454
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 455
    return-void
.end method

.method public preview(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 30
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_4

    .line 147
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    .line 148
    .local v17, "args":Lorg/json/JSONObject;
    if-eqz v17, :cond_4

    .line 149
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_micro_attach_view"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v4, "corpId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 151
    .local v18, "corpId":Ljava/lang/String;
    const-string/jumbo v4, "spaceId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "spaceId":Ljava/lang/String;
    const-string/jumbo v4, "fileId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "fileId":Ljava/lang/String;
    const-string/jumbo v4, "fileName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v4, "fileSize"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 155
    .local v20, "fileSize":J
    const-string/jumbo v4, "fileType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, "fileType":Ljava/lang/String;
    const-string/jumbo v4, "type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 159
    .local v26, "type":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V

    .line 161
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    .line 206
    .end local v6    # "spaceId":Ljava/lang/String;
    .end local v7    # "fileId":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fileType":Ljava/lang/String;
    .end local v17    # "args":Lorg/json/JSONObject;
    .end local v18    # "corpId":Ljava/lang/String;
    .end local v20    # "fileSize":J
    .end local v26    # "type":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 164
    .restart local v6    # "spaceId":Ljava/lang/String;
    .restart local v7    # "fileId":Ljava/lang/String;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "fileType":Ljava/lang/String;
    .restart local v17    # "args":Lorg/json/JSONObject;
    .restart local v18    # "corpId":Ljava/lang/String;
    .restart local v20    # "fileSize":J
    .restart local v26    # "type":Ljava/lang/String;
    :cond_0
    new-instance v25, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 165
    .local v25, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v25

    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 166
    move-object/from16 v0, v25

    iput-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 167
    move-object/from16 v0, v25

    iput-object v8, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 168
    move-wide/from16 v0, v20

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 169
    move-object/from16 v0, v25

    iput-object v9, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 170
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    .line 172
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const-string/jumbo v4, "folder"

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    const-string/jumbo v4, "folder"

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    .line 181
    :cond_1
    :goto_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v22

    .line 183
    .local v22, "orgId":J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 185
    .end local v22    # "orgId":J
    :cond_2
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v13, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "data"

    move-object/from16 v0, v25

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string/jumbo v4, "space_transfer_src"

    const-string/jumbo v5, "app"

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v4, "mode"

    const-string/jumbo v5, "normal"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 190
    .local v24, "previewMode":Ljava/lang/String;
    const-string/jumbo v4, "space_preview_type"

    move-object/from16 v0, v24

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v4, "path"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 193
    .local v19, "path":Ljava/lang/String;
    const-string/jumbo v4, "space_preview_path"

    move-object/from16 v0, v19

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v4, "version"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1109
    const-wide/16 v10, 0x0

    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v28

    .line 196
    .local v28, "version":J
    const-string/jumbo v4, "space_preview_version"

    move-wide/from16 v0, v28

    invoke-virtual {v13, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string/jumbo v4, "safe"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    const-string/jumbo v4, "watermark"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 200
    .local v27, "watermark":Z
    const-string/jumbo v4, "space_preview_watermark"

    move/from16 v0, v27

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    .end local v27    # "watermark":Z
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v12

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    .line 206
    .end local v6    # "spaceId":Ljava/lang/String;
    .end local v7    # "fileId":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fileType":Ljava/lang/String;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v17    # "args":Lorg/json/JSONObject;
    .end local v18    # "corpId":Ljava/lang/String;
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "fileSize":J
    .end local v24    # "previewMode":Ljava/lang/String;
    .end local v25    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v26    # "type":Ljava/lang/String;
    .end local v28    # "version":J
    :cond_4
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 177
    .restart local v6    # "spaceId":Ljava/lang/String;
    .restart local v7    # "fileId":Ljava/lang/String;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "fileType":Ljava/lang/String;
    .restart local v17    # "args":Lorg/json/JSONObject;
    .restart local v18    # "corpId":Ljava/lang/String;
    .restart local v20    # "fileSize":J
    .restart local v25    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .restart local v26    # "type":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "file"

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public saveFile(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 315
    if-eqz p1, :cond_3

    .line 316
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 317
    .local v7, "args":Lorg/json/JSONObject;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mSaveToSpaceCallbackName:Ljava/lang/String;

    .line 318
    if-eqz v7, :cond_3

    .line 319
    const-string/jumbo v0, "url"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "downloadUrl":Ljava/lang/String;
    const-string/jumbo v0, "name"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x2

    const-string/jumbo v10, "url or name cannot be empty"

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 349
    .end local v4    # "downloadUrl":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "args":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 325
    .restart local v4    # "downloadUrl":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "args":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v0, "corpId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    const-string/jumbo v9, ""

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "argCorpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v8

    .line 328
    .local v8, "session":Lhqe$d;
    if-eqz v8, :cond_2

    .line 1488
    iget-object v0, v8, Lhqe$d;->b:Ljava/lang/String;

    .line 328
    if-eqz v0, :cond_2

    .line 2488
    iget-object v0, v8, Lhqe$d;->b:Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v9, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "invalid corpId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 331
    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 338
    .end local v6    # "argCorpId":Ljava/lang/String;
    .end local v8    # "session":Lhqe$d;
    .local v2, "orgId":J
    :goto_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 349
    .end local v2    # "orgId":J
    .end local v4    # "downloadUrl":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "args":Lorg/json/JSONObject;
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0

    .line 336
    .restart local v4    # "downloadUrl":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "args":Lorg/json/JSONObject;
    :cond_4
    const-wide/16 v2, 0x0

    .restart local v2    # "orgId":J
    goto :goto_1
.end method

.method public showLoadingDialog()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 458
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 463
    return-void
.end method
