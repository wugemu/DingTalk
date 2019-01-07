.class public Lclq;
.super Ljava/lang/Object;
.source "OfflineTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lclq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lclq;->b:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lclq;->c:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lclq;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OfflineTaskInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    .line 82
    return-void
.end method

.method static synthetic a(Lclq;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lclq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p1}, Lclq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "task"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "ret":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    sget-object v1, Lclq;->c:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    :cond_0
    return v0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 346
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 348
    .local v0, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 352
    :cond_0
    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "task"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "ret":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    sget-object v1, Lclq;->d:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    :cond_0
    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 308
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 312
    .end local p0    # "reason":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 310
    .restart local p0    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lclq;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lclq;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lclq;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "responseData"    # Ljava/lang/String;
    .param p2, "statusCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    const-string/jumbo v1, "500"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 217
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "offline"

    const-string/jumbo v2, "lwpTask"

    iget-object v3, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    move-object v4, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v6, "clickedParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "sessionId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "status"

    invoke-virtual {v6, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "oa_host_cloud_lwp_response"

    invoke-interface {v1, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->SUCCESS:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    .line 233
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-static {}, Lclq;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    .line 234
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-static {v1}, Lclt;->b(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)I

    move-result v7

    .line 235
    .local v7, "dbRet":I
    if-gtz v7, :cond_0

    .line 236
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Lclq;->d(Ljava/lang/String;)V

    .line 239
    :cond_0
    const-string/jumbo v1, "offline"

    sget-object v2, Lclq;->b:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "task success "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " code "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "  "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "action_offline_task"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v8, "intent":Landroid/content/Intent;
    new-instance v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;-><init>()V

    .line 245
    .local v9, "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    iput-object p2, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatusCode:Ljava/lang/String;

    .line 246
    sget-object v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->SUCCESS:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v1

    iput v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatus:I

    .line 247
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->h:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStorageKey:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->g:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskDomain:Ljava/lang/String;

    .line 250
    iput-object p1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskResponseText:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    if-nez v1, :cond_2

    const/16 v1, 0xa

    :goto_1
    iput v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mMaxRetryTime:I

    .line 252
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mUrl:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->l:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mRequestId:Ljava/lang/String;

    .line 254
    const-string/jumbo v1, "intent_key_offline_task_result"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v8}, Ldq;->a(Landroid/content/Intent;)Z

    .line 256
    return-void

    .line 219
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v6    # "clickedParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "dbRet":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :cond_1
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 220
    .restart local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "offline"

    const-string/jumbo v2, "lwpTask"

    iget-object v3, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .restart local v6    # "clickedParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "dbRet":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    :cond_2
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    goto :goto_1
.end method

.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    if-nez v2, :cond_2

    .line 90
    iget-object v2, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->e:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->e:I

    iget-object v3, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 265
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 266
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "offline"

    const-string/jumbo v2, "lwpTask"

    iget-object v3, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    move-object v4, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v6, "clickedParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v1, "sessionId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v1, "status"

    invoke-virtual {v6, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "oa_host_cloud_lwp_fail"

    invoke-interface {v1, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->FAIL:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->i:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    .line 278
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-static {}, Lclq;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->f:J

    .line 279
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    invoke-static {v1}, Lclt;->b(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)I

    move-result v7

    .line 281
    .local v7, "dbRet":I
    if-gtz v7, :cond_0

    .line 282
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Lclq;->d(Ljava/lang/String;)V

    .line 285
    :cond_0
    const-string/jumbo v1, "offline"

    sget-object v2, Lclq;->b:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "task fail "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " code "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "  "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "action_offline_task"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v8, "intent":Landroid/content/Intent;
    new-instance v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;-><init>()V

    .line 291
    .local v9, "result":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;
    iput-object p2, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatusCode:Ljava/lang/String;

    .line 292
    sget-object v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->FAIL:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;->getStatus()I

    move-result v1

    iput v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStatus:I

    .line 293
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskKey:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->h:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mStorageKey:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->g:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskDomain:Ljava/lang/String;

    .line 296
    iput-object p1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mTaskResponseText:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    if-nez v1, :cond_1

    const/16 v1, 0xa

    :goto_0
    iput v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mMaxRetryTime:I

    .line 298
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskResult;->mUrl:Ljava/lang/String;

    .line 299
    const-string/jumbo v1, "intent_key_offline_task_result"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v8}, Ldq;->a(Landroid/content/Intent;)Z

    .line 303
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->j:I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    invoke-virtual {v0}, Lclr;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lclq$1;

    invoke-direct {v1, p0}, Lclq$1;-><init>(Lclq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method
