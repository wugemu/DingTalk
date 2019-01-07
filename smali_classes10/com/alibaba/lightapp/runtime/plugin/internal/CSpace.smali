.class public Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "CSpace.java"


# instance fields
.field private final ERROR_CANCEL:I

.field private final ERROR_DUPLICATE:I

.field private final ERROR_FAILED:I

.field private final PARAM_FILE_ID:Ljava/lang/String;

.field private final PARAM_IS_ENCRYPT:Ljava/lang/String;

.field private final PARAM_OPE_ID:Ljava/lang/String;

.field private final PARAM_SPACE_ID:Ljava/lang/String;

.field private final PROCESS_STATUS_BEGIN:I

.field private final PROCESS_STATUS_COMPLETED:I

.field private final PROCESS_STATUS_DECRYPTING:I

.field private final PROCESS_STATUS_DOWNLOADING:I

.field private final PROCESS_STATUS_UPLOADING:I

.field private final RESULT_OPE_STATUS:Ljava/lang/String;

.field private final RESULT_PROCESS:Ljava/lang/String;

.field private final mLastProgressCallbackTimeStampMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpeIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 42
    const-string/jumbo v0, "spaceId"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PARAM_SPACE_ID:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "fileId"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PARAM_FILE_ID:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "isEncrypt"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PARAM_IS_ENCRYPT:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "opeId"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PARAM_OPE_ID:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "opeStatus"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->RESULT_OPE_STATUS:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "process"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->RESULT_PROCESS:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PROCESS_STATUS_BEGIN:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PROCESS_STATUS_DOWNLOADING:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PROCESS_STATUS_DECRYPTING:I

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PROCESS_STATUS_UPLOADING:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->PROCESS_STATUS_COMPLETED:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->ERROR_CANCEL:I

    .line 57
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->ERROR_FAILED:I

    .line 58
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->ERROR_DUPLICATE:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mLastProgressCallbackTimeStampMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->canCallbackProgress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;IJJ)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildDecryptAndUploadProgressJson(Ljava/lang/String;IJJ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildDecryptAndUploadSuccessJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->uploadFilesToTargetSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private buildDecryptAndUploadProgressJson(Ljava/lang/String;IJJ)Lorg/json/JSONObject;
    .locals 13
    .param p1, "opeId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "total"    # J
    .param p5, "completed"    # J

    .prologue
    .line 196
    const/4 v5, 0x0

    .line 198
    .local v5, "progress":I
    move-wide/from16 v0, p3

    long-to-float v6, v0

    .line 199
    .local v6, "totalSize":F
    move-wide/from16 v0, p5

    long-to-float v2, v0

    .line 201
    .local v2, "completedSize":F
    const/4 v7, 0x2

    if-ne p2, v7, :cond_1

    .line 202
    div-float v7, v2, v6

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 209
    :cond_0
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "opeStatus"

    invoke-virtual {v4, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v7, "process"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v7, "opeId"

    invoke-virtual {v4, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    return-object v4

    .line 203
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_1
    const/4 v7, 0x3

    if-ne p2, v7, :cond_2

    .line 204
    const/16 v5, 0x2d

    goto :goto_0

    .line 205
    :cond_2
    const/4 v7, 0x4

    if-ne p2, v7, :cond_0

    .line 206
    div-float v7, v2, v6

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int/lit8 v5, v7, 0x37

    goto :goto_0

    .line 214
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private buildDecryptAndUploadSuccessJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "opeId"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "opeStatus"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v2, "spaceId"

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {p2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 224
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v2, "fileId"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v2, "opeId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private canCallbackProgress(Ljava/lang/String;)Z
    .locals 10
    .param p1, "opeId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mLastProgressCallbackTimeStampMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2044
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 240
    .local v2, "lastProgressCallback":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 242
    .local v4, "nowTimeStamp":J
    sub-long v6, v4, v2

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 244
    .local v0, "callbackProgress":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mLastProgressCallbackTimeStampMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    return v0

    .line 242
    .end local v0    # "callbackProgress":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadFilesToTargetSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opeId"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v0, "getTempSpaceListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 190
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "getTempSpaceListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 192
    .restart local v0    # "getTempSpaceListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcma;)V

    .line 193
    return-void
.end method


# virtual methods
.method public cancelDecryptAndUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 253
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 254
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "param error"

    invoke-static {v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 265
    :goto_0
    return-object v1

    .line 257
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "opeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "opeId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "opeId invalid"

    invoke-static {v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public decryptAndUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 66
    :cond_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x2

    const-string/jumbo v7, "param error"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 125
    :goto_0
    return-object v4

    .line 69
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 70
    .local v0, "callbackId":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "opeId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "opeId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "13"

    const-string/jumbo v7, "duplicate request"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v1, "downloadListener":Lgqr;
    new-instance v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 116
    .local v3, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "spaceId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 117
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "fileId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 118
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "isEncrypt"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 121
    const-class v5, Lgqr;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v1, v5, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "downloadListener":Lgqr;
    check-cast v1, Lgqr;

    .line 123
    .restart local v1    # "downloadListener":Lgqr;
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLgqr;)V

    .line 125
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public getMediaInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v8, 0x2

    .line 300
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "null param"

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 354
    :goto_0
    return-object v0

    .line 304
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "spaceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 305
    .local v2, "spaceId":J
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "fileId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 306
    .local v4, "fileId":J
    cmp-long v0, v2, v12

    if-lez v0, :cond_2

    cmp-long v0, v4, v12

    if-gez v0, :cond_3

    .line 307
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "invalid spaceId or fileId"

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 310
    :cond_3
    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 352
    .local v6, "listener":Lcma;, "Lcma<Lgrh;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(JJLcma;)V

    .line 354
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mLastProgressCallbackTimeStampMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 401
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->mOpeIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 402
    return-void
.end method

.method public openFolder(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 271
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x2

    const-string/jumbo v13, "param error"

    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v0, v1, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 295
    :goto_0
    return-object v0

    .line 274
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "spaceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "spaceId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "folderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "folderId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "folderName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "folderName":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "spaceType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "spaceType":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "role":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "corpId":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 281
    .local v10, "orgId":J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v10

    .line 285
    :cond_2
    move-wide v2, v10

    .line 287
    .local v2, "finalOrgId":J
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 295
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public sendMsgToRequestPermission(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    .line 360
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 361
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v11, "null param"

    invoke-static {v12, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 395
    :goto_0
    return-object v0

    .line 364
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "spaceId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, "spaceId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "dentryId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "dentryId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "dentryName"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "dentryName":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "encryptionUid"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "encryptionUid":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "message"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "message":Ljava/lang/String;
    invoke-static {v8}, Lcoh;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 372
    .local v2, "uid":J
    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-lez v0, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v11, "null param"

    invoke-static {v12, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v0, :cond_4

    .line 377
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v11, "null param"

    invoke-static {v12, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 382
    .local v1, "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0, v9, v6, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    move-result-object v4

    .line 384
    .local v4, "aliFileMsgDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 386
    .end local v4    # "aliFileMsgDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    :cond_5
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const-string/jumbo v12, "not support"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
