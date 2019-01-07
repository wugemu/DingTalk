.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;
.super Ljava/lang/Enum;
.source "FCDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;


# instance fields
.field private final PREFS_FAST_CHECKIN_PLANS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mPlanKeyToModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhhe;",
            ">;"
        }
    .end annotation
.end field

.field private mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v0, "FCDataManager"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->TAG:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "prefs_fast_checkin_plans"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->PREFS_FAST_CHECKIN_PLANS:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    .line 42
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->init()V

    .line 46
    return-void
.end method

.method private add(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;
    .locals 12
    .param p1, "plansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    if-nez p1, :cond_1

    .line 226
    const/4 v0, 0x0

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKey(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "planKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhhe;

    .line 233
    .local v1, "oldPlanModule":Lhhe;
    if-eqz v1, :cond_2

    .line 234
    const-string/jumbo v4, "FCDataManager"

    const-string/jumbo v5, "add exist same"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "planKey"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v1}, Lhhe;->a()V

    .line 238
    :cond_2
    invoke-static {p1}, Lhhe;->a(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;

    move-result-object v0

    .line 239
    .local v0, "newPlanModule":Lhhe;
    invoke-virtual {v0}, Lhhe;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, "succRestore":Z
    if-eqz v1, :cond_3

    .line 3133
    if-nez v1, :cond_5

    .line 3134
    const/4 v3, 0x0

    .line 248
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->saveFastCheckinPlanKeysToSP()V

    .line 251
    if-nez v3, :cond_4

    .line 252
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKeyWithUserId(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Ljava/lang/String;

    move-result-object v4

    .line 5052
    const/4 v5, -0x1

    invoke-static {v4, p1, v5}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 255
    :cond_4
    :try_start_0
    const-string/jumbo v4, "FCDataManager"

    const-string/jumbo v5, "add from file"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "plansObject"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "plansObject.size"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 3136
    :cond_5
    const/4 v5, 0x0

    .line 3137
    iget-object v4, v0, Lhhe;->a:Lfp;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lhhe;->a:Lfp;

    invoke-virtual {v4}, Lfp;->a()I

    move-result v4

    if-lez v4, :cond_a

    .line 3138
    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    :goto_2
    iget-object v4, v0, Lhhe;->a:Lfp;

    invoke-virtual {v4}, Lfp;->a()I

    move-result v4

    if-ge v5, v4, :cond_9

    .line 3139
    iget-object v4, v0, Lhhe;->a:Lfp;

    iget-object v7, v0, Lhhe;->a:Lfp;

    invoke-virtual {v7, v5}, Lfp;->a(I)J

    move-result-wide v8

    .line 4096
    const/4 v7, 0x0

    invoke-virtual {v4, v8, v9, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3139
    check-cast v4, Lhhd;

    .line 3140
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3141
    invoke-virtual {v4}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v7

    .line 3142
    iget-wide v8, v7, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v1, v8, v9}, Lhhe;->a(J)Lhhd;

    move-result-object v4

    .line 3143
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 3144
    invoke-virtual {v4}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v6

    .line 3145
    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isFinished()Z

    move-result v4

    if-nez v4, :cond_6

    iget-wide v8, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_8

    :cond_6
    const/4 v4, 0x1

    .line 3147
    :goto_3
    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isFinished()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->setFinished(Z)V

    .line 3149
    iget-wide v8, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    iput-wide v8, v7, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    move v6, v4

    .line 3138
    :cond_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    .line 3145
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    move v3, v6

    .line 3154
    .end local v3    # "succRestore":Z
    :goto_4
    if-eqz v3, :cond_3

    .line 3155
    invoke-virtual {v0}, Lhhe;->c()V

    goto/16 :goto_1

    .restart local v3    # "succRestore":Z
    :cond_a
    move v3, v5

    goto :goto_4
.end method

.method private generatePlanKey(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Ljava/lang/String;
    .locals 2
    .param p1, "checkinPlansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    const-string/jumbo v0, ""

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getCorpId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getWorkDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generatePlanKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Lhha;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lhha;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePlanKeyWithUserId(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Ljava/lang/String;
    .locals 2
    .param p1, "checkinPlansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    const-string/jumbo v0, ""

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getCorpId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getWorkDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKeyWithUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generatePlanKeyWithUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 287
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v0, "FCDataManager"

    const-string/jumbo v1, "init"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->loadFastCheckinPlansFromFile()V

    .line 51
    return-void
.end method

.method private loadFastCheckinPlansFromFile()V
    .locals 17

    .prologue
    .line 57
    sget-object v11, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    const-string/jumbo v11, "FCDataManager"

    const-string/jumbo v12, "load degraded!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v11, "prefs_fast_checkin_plans"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "planKeyStr":Ljava/lang/String;
    const-string/jumbo v11, "FCDataManager"

    const-string/jumbo v12, "load start"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "planKey"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    invoke-static {v11, v12, v13}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v10, "plansObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 67
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "planKeyArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v7, "planKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 71
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "planKey":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    .end local v4    # "planKey":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 76
    const/4 v8, 0x0

    .line 77
    .local v8, "planObjectsLosed":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    .restart local v4    # "planKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 82
    const-string/jumbo v11, "_"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "corpIdAndWorkDate":[Ljava/lang/String;
    array-length v11, v1

    const/4 v13, 0x2

    if-lt v11, v13, :cond_2

    .line 87
    const/4 v11, 0x0

    aget-object v11, v1, v11

    const/4 v13, 0x1

    aget-object v13, v1, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKeyWithUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    .line 88
    .local v9, "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    if-eqz v9, :cond_5

    .line 89
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v13, "SmartWork"

    const-string/jumbo v14, "mp_checkin_task_ddobject_cache"

    invoke-interface {v11, v13, v14}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_3
    const-string/jumbo v13, "FCDataManager"

    const-string/jumbo v14, "load"

    const/4 v11, 0x6

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v16, "planKey"

    aput-object v16, v15, v11

    const/4 v11, 0x1

    aput-object v4, v15, v11

    const/4 v11, 0x2

    const-string/jumbo v16, "plansObject"

    aput-object v16, v15, v11

    const/4 v11, 0x3

    invoke-static {v9}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const/4 v11, 0x4

    const-string/jumbo v16, "size"

    aput-object v16, v15, v11

    const/16 v16, 0x5

    if-nez v9, :cond_6

    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v16

    invoke-static {v13, v14, v15}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 105
    .end local v1    # "corpIdAndWorkDate":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "planKey":Ljava/lang/String;
    .end local v5    # "planKeyArray":Lorg/json/JSONArray;
    .end local v7    # "planKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "planObjectsLosed":Z
    .end local v9    # "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "FCDataManager"

    const-string/jumbo v12, "load"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "msg"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 111
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 112
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    .line 113
    .restart local v9    # "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    if-eqz v9, :cond_4

    .line 116
    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getCorpId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getWorkDate()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "planKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-static {v9}, Lhhe;->a(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;

    move-result-object v13

    invoke-interface {v12, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 92
    .restart local v1    # "corpIdAndWorkDate":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "planKeyArray":Lorg/json/JSONArray;
    .restart local v7    # "planKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "planObjectsLosed":Z
    :cond_5
    const/4 v8, 0x1

    .line 93
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v13, "SmartWork"

    const-string/jumbo v14, "mp_checkin_task_ddobject_cache"

    const-string/jumbo v15, ""

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v13, v14, v15, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 95
    :cond_6
    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v11

    goto :goto_4

    .line 97
    .end local v1    # "corpIdAndWorkDate":[Ljava/lang/String;
    .end local v4    # "planKey":Ljava/lang/String;
    .end local v9    # "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    :cond_7
    if-eqz v8, :cond_3

    .line 98
    const-string/jumbo v11, "FCDataManager"

    const-string/jumbo v12, "load fail as lose plansObject file"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-string/jumbo v11, "prefs_fast_checkin_plans"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v11, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->resetTodayFetchState()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 120
    .end local v3    # "i":I
    .end local v5    # "planKeyArray":Lorg/json/JSONArray;
    .end local v7    # "planKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "planObjectsLosed":Z
    :cond_8
    const-string/jumbo v11, "FCDataManager"

    const-string/jumbo v12, "load complete"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "mPlanKeyToModuleMap size"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private saveFastCheckinPlanKeysToSP()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 265
    .local v1, "planKeys":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, "planKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 268
    .end local v0    # "planKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "prefs_fast_checkin_plans"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v2, "FCDataManager"

    const-string/jumbo v3, "save to sp"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "planKeys"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    return-object v0
.end method


# virtual methods
.method public final addFromFetch(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    .local p1, "plansObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    .line 137
    .local v0, "plansObject":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
    if-eqz v0, :cond_2

    .line 138
    const-string/jumbo v2, "FCDataManager"

    const-string/jumbo v3, "addFromFetch"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "corpId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->getCorpId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->add(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;

    goto :goto_0
.end method

.method public final addFromPush(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;
    .locals 3
    .param p1, "plansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const-string/jumbo v0, "FCDataManager"

    const-string/jumbo v1, "addFromPush"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->add(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;

    move-result-object v0

    goto :goto_0
.end method

.method public final findPlanExecutor(Ljava/lang/String;Ljava/lang/String;J)Lhhd;
    .locals 7
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;
    .param p3, "planId"    # J

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->findPlanModule(Ljava/lang/String;Ljava/lang/String;)Lhhe;

    move-result-object v0

    .line 201
    .local v0, "module":Lhhe;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p3, p4}, Lhhe;->a(J)Lhhd;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .line 204
    :cond_0
    const-string/jumbo v1, "FCDataManager"

    const-string/jumbo v2, "findPlanExecutor null"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "planId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "corpId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "workDate"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final findPlanModule(Ljava/lang/String;Ljava/lang/String;)Lhhe;
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    const-string/jumbo v0, "FCDataManager"

    const-string/jumbo v1, "findPlanModule null"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "corpId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "workDate"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhe;

    goto :goto_0
.end method

.method public final finish(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .locals 9
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;
    .param p3, "planId"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "ret":Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->findPlanModule(Ljava/lang/String;Ljava/lang/String;)Lhhe;

    move-result-object v0

    .line 184
    .local v0, "module":Lhhe;
    if-eqz v0, :cond_0

    .line 2081
    iget-object v2, v0, Lhhe;->a:Lfp;

    .line 2096
    invoke-virtual {v2, p3, p4, v3}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2081
    check-cast v2, Lhhd;

    .line 2082
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2083
    invoke-virtual {v2}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    .line 2084
    .end local v1    # "ret":Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    const-string/jumbo v2, "FCPlanModule"

    const-string/jumbo v3, "finish"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "corpId"

    aput-object v6, v4, v5

    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "planId"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "isFinish"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isFinished()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2085
    invoke-virtual {v1, v7}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->setFinished(Z)V

    .line 2086
    invoke-virtual {v0}, Lhhe;->c()V

    .line 188
    .restart local v1    # "ret":Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public final getAllPlansModule()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhhe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    return-object v0
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;
    .param p3, "planId"    # J

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    const-string/jumbo v3, "FCDataManager"

    const-string/jumbo v4, "remove"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "corpId"

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    const-string/jumbo v6, "planId"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "planKey":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKeyWithUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "planKeyWithUserId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhe;

    .line 157
    .local v0, "module":Lhhe;
    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v3, v0, Lhhe;->a:Lfp;

    invoke-virtual {v3, p3, p4}, Lfp;->d(J)I

    move-result v3

    if-ltz v3, :cond_4

    .line 1117
    iget-object v3, v0, Lhhe;->a:Lfp;

    .line 1132
    invoke-virtual {v3, p3, p4}, Lfp;->b(J)V

    .line 1118
    iget-object v3, v0, Lhhe;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .line 1119
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getPlanId()J

    move-result-wide v6

    cmp-long v5, v6, p3

    if-nez v5, :cond_2

    .line 1120
    iget-object v4, v0, Lhhe;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-virtual {v4, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->remove(Ljava/lang/Object;)V

    .line 1124
    :cond_3
    invoke-virtual {v0}, Lhhe;->c()V

    .line 164
    :cond_4
    invoke-virtual {v0}, Lhhe;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    const-string/jumbo v3, "FCDataManager"

    const-string/jumbo v4, "remove file"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "planKey"

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->saveFastCheckinPlanKeysToSP()V

    .line 168
    invoke-static {v2}, Lcmu;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final save(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V
    .locals 2
    .param p1, "plansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->generatePlanKeyWithUserId(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Ljava/lang/String;

    move-result-object v0

    .line 3052
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 217
    :cond_0
    return-void
.end method

.method public final tryLoadData()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->mPlanKeyToModuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->loadFastCheckinPlansFromFile()V

    .line 306
    :cond_0
    return-void
.end method
