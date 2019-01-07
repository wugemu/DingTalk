.class public Leii;
.super Ljava/lang/Object;
.source "ConfigEngine.java"


# static fields
.field private static volatile b:Leii;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Leij;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lekc;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lejx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leii;->a:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leii;->d:Ljava/util/Map;

    .line 354
    new-instance v0, Leii$6;

    invoke-direct {v0, p0}, Leii$6;-><init>(Leii;)V

    iput-object v0, p0, Leii;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Leii;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Leii;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Leii;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 4
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lou;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Leii;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Leii;->b:Leii;

    if-nez v0, :cond_0

    .line 85
    const-class v1, Leii;

    monitor-enter v1

    .line 86
    :try_start_0
    new-instance v0, Leii;

    invoke-direct {v0}, Leii;-><init>()V

    sput-object v0, Leii;->b:Leii;

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    sget-object v0, Leii;->b:Leii;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Leii;)V
    .locals 4
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    .line 3320
    iget-object v0, p0, Leii;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3322
    iget-object v0, p0, Leii;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 3323
    new-array v1, v0, [Ljava/lang/String;

    .line 3324
    const-string/jumbo v2, "wk_phone"

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3325
    new-array v2, v0, [Ljava/lang/String;

    .line 3326
    iget-object v0, p0, Leii;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3328
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    new-instance v3, Leii$5;

    invoke-direct {v3, p0}, Leii$5;-><init>(Leii;)V

    .line 3329
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic a(Leii;J)V
    .locals 3
    .param p0, "x0"    # Leii;
    .param p1, "x1"    # J

    .prologue
    const/4 v2, 0x0

    .line 64
    .line 4451
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    const-string/jumbo v1, "hybrid_oa_local_orgids_report"

    .line 5217
    invoke-virtual {v0, v1, v2, v2}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 4451
    if-eqz v0, :cond_0

    .line 4455
    const-string/jumbo v0, "OrgValidateIService"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Leii$8;

    invoke-direct {v1, p0, p1, p2}, Leii$8;-><init>(Leii;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic a(Leii;Lcma;Leij;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Leii;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Leij;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 5506
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 5507
    :cond_0
    :goto_0
    return-void

    .line 5509
    :cond_1
    const-string/jumbo v0, "config_engine_parse"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Leii$9;

    invoke-direct {v1, p0, p2, p3, p1}, Leii$9;-><init>(Leii;Leij;Ljava/lang/String;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Leii;Ljava/lang/String;J)V
    .locals 6
    .param p0, "x0"    # Leii;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 64
    .line 3527
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lou;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3534
    :cond_0
    return-void

    .line 3528
    :catch_0
    move-exception v0

    .line 3530
    const-string/jumbo v1, "ConfigEngine"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Preferences key conflict, topic="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 3532
    throw v0
.end method

.method static synthetic a(Leii;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Leii;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Leii;->c(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lejx;)V
    .locals 8
    .param p0, "topicModel"    # Lejx;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 222
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v2

    const-string/jumbo v3, "oa_config_check_local_data"

    .line 2217
    invoke-virtual {v2, v3, v4, v4}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    .line 222
    if-eqz v2, :cond_0

    iget-object v2, p0, Lejx;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lejx;->a:Ljava/lang/Long;

    .line 223
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    :try_start_0
    invoke-static {}, Leen;->b()Leen;

    move-result-object v2

    invoke-virtual {v2}, Leen;->a()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "mOrgMicroAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    :cond_2
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lejx;->a:Ljava/lang/Long;

    .line 230
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "ConfigEngine"

    const-string/jumbo v4, "checkOAData reset version"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 232
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "OA"

    const-string/jumbo v3, "check_oa_data_reset_version"

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "mOrgMicroAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    .end local v1    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "ConfigEngine"

    const-string/jumbo v4, "checkOAData error"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 93
    sget-object v0, Leii;->b:Leii;

    .line 1024
    const-string/jumbo v1, "oa_user"

    new-instance v2, Leiq;

    invoke-direct {v2}, Leiq;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1025
    const-string/jumbo v1, "fun_control_android"

    new-instance v2, Leil;

    invoke-direct {v2}, Leil;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1026
    const-string/jumbo v1, "oa_jsapi"

    new-instance v2, Lekq;

    invoke-direct {v2}, Lekq;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1027
    const-string/jumbo v1, "org_screen"

    new-instance v2, Leit;

    invoke-direct {v2}, Leit;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1028
    const-string/jumbo v1, "user_rights"

    new-instance v2, Leis;

    invoke-direct {v2}, Leis;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1029
    const-string/jumbo v1, "oa_activity"

    new-instance v2, Leip;

    invoke-direct {v2}, Leip;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1030
    const-string/jumbo v1, "hpm_user"

    new-instance v2, Lekp;

    invoke-direct {v2}, Lekp;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1031
    const-string/jumbo v1, "org_team"

    new-instance v2, Leiv;

    invoke-direct {v2}, Leiv;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1032
    const-string/jumbo v1, "pdp_user"

    new-instance v2, Leir;

    invoke-direct {v2}, Leir;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1033
    const-string/jumbo v1, "mail"

    new-instance v2, Leio;

    invoke-direct {v2}, Leio;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1034
    const-string/jumbo v1, "ch_user"

    new-instance v2, Leik;

    invoke-direct {v2}, Leik;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1036
    const-string/jumbo v1, "function_search_global_v2"

    new-instance v2, Lein;

    invoke-direct {v2}, Lein;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 1037
    const-string/jumbo v1, "search_activity_v3"

    new-instance v2, Leiu;

    invoke-direct {v2}, Leiu;-><init>()V

    invoke-virtual {v0, v1, v2}, Leii;->a(Ljava/lang/String;Leij;)V

    .line 94
    return-void
.end method

.method static synthetic b(Leii;)V
    .locals 0
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    invoke-virtual {p0}, Leii;->c()V

    return-void
.end method

.method static synthetic b(Leii;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Leii;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Leii;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Leii;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    iget-object v0, p0, Leii;->a:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 179
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 180
    .local v2, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "topic":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Leii;->a:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "wk_phone"

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 186
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v13, "ver"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 188
    .local v10, "topicVersion":J
    const-string/jumbo v13, "msg"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "msg":Ljava/lang/String;
    invoke-static {v8}, Leii;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 190
    .local v6, "saveTopicVersion":J
    cmp-long v13, v10, v6

    if-lez v13, :cond_0

    .line 192
    new-instance v9, Lejx;

    invoke-direct {v9}, Lejx;-><init>()V

    .line 193
    .local v9, "topicModel":Lejx;
    iput-object v8, v9, Lejx;->b:Ljava/lang/String;

    .line 194
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v9, Lejx;->a:Ljava/lang/Long;

    .line 195
    const-string/jumbo v13, "org_screen"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v13, "pdp_user"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 196
    :cond_1
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v9, Lejx;->a:Ljava/lang/Long;

    .line 198
    :cond_2
    const-string/jumbo v13, "oa_user"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 199
    invoke-static {v9}, Leii;->a(Lejx;)V

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Leii;->d:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v13, "oa"

    const-string/jumbo v14, "ConfigEngine"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "add CloudSetting topic success "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "topic:"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, ", version:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, ", client version:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, ", size:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Leii;->d:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 207
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 204
    invoke-static {v15}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 203
    invoke-static {v13, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz v4, :cond_0

    .line 209
    sget-object v13, Lelz;->g:Ljava/lang/String;

    invoke-static {v13, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 212
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "saveTopicVersion":J
    .end local v9    # "topicModel":Lejx;
    .end local v10    # "topicVersion":J
    :catch_0
    move-exception v3

    .line 213
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const-string/jumbo v13, "oa"

    const-string/jumbo v14, "ConfigEngine"

    const-string/jumbo v15, "filterCloudSetting error"

    invoke-static {v13, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    .end local v2    # "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v8    # "topic":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Leii;->d()V

    .line 219
    :cond_5
    return-void
.end method

.method static synthetic d(Leii;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    iget-object v0, p0, Leii;->d:Ljava/util/Map;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Leii;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Leii;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 563
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 564
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic e(Leii;)V
    .locals 0
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    invoke-direct {p0}, Leii;->d()V

    return-void
.end method

.method private f()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 569
    :try_start_0
    const-string/jumbo v3, "OATopic_ReportCount"

    invoke-static {v3}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 571
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_0

    .line 572
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 574
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-static {}, Leii;->e()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "curDateString":Ljava/lang/String;
    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    const-string/jumbo v3, "count"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 581
    .end local v0    # "curDateString":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v3

    .line 579
    :catch_0
    move-exception v3

    const-string/jumbo v3, "ConfigEngine"

    const/4 v4, 0x0

    const-string/jumbo v5, "getOATopicReportCount error"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic f(Leii;)I
    .locals 1
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    invoke-direct {p0}, Leii;->f()I

    move-result v0

    return v0
.end method

.method static synthetic g(Leii;)V
    .locals 3
    .param p0, "x0"    # Leii;

    .prologue
    .line 64
    .line 5543
    :try_start_0
    const-string/jumbo v0, "OATopic_ReportCount"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5544
    invoke-static {v0}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 5545
    if-nez v0, :cond_0

    .line 5546
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5548
    :cond_0
    invoke-static {}, Leii;->e()Ljava/lang/String;

    move-result-object v1

    .line 5549
    const-string/jumbo v2, "date"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5550
    const-string/jumbo v1, "count"

    const-string/jumbo v2, "count"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5555
    :goto_0
    const-string/jumbo v1, "OATopic_ReportCount"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5558
    :goto_1
    return-void

    .line 5552
    :cond_1
    const-string/jumbo v2, "date"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5553
    const-string/jumbo v1, "count"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5557
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ConfigEngine"

    const/4 v1, 0x0

    const-string/jumbo v2, "setOATopicReportCount error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Leij;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "handler"    # Leij;

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Leii;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    const-string/jumbo v3, "oa"

    const-class v4, Leii;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 141
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "VersionName"

    invoke-static {v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "versionName":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "appVersionName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 146
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "current app version name:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", history version:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "update app "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "versionName:"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, ", current app version name:"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v0, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Leii;->a(Z)V

    .line 155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "VersionName"

    invoke-static {v3, v4, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 175
    .end local v0    # "appVersionName":Ljava/lang/String;
    .end local v2    # "versionName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    :try_start_1
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v3

    const-string/jumbo v4, "oa_config_check_local_data"

    .line 1217
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 160
    if-eqz v3, :cond_3

    .line 161
    const-string/jumbo v3, "filterCloudSetting"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Leii$2;

    invoke-direct {v4, p0, p1}, Leii$2;-><init>(Leii;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_1
    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 168
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Leii;->c(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 172
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_4
    throw v3
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isForseUpdate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    const-string/jumbo v0, "ConfigEngine"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Leii$4;

    invoke-direct {v1, p0, p1}, Leii$4;-><init>(Leii;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lejx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    .local p1, "topicModels":Ljava/util/List;, "Ljava/util/List<Lejx;>;"
    iget-object v0, p0, Leii;->c:Lekc;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lekd;

    invoke-direct {v0}, Lekd;-><init>()V

    iput-object v0, p0, Leii;->c:Lekc;

    .line 372
    :cond_0
    iget-object v0, p0, Leii;->c:Lekc;

    new-instance v1, Leii$7;

    invoke-direct {v1, p0}, Leii$7;-><init>(Leii;)V

    invoke-interface {v0, p1, v1}, Lekc;->a(Ljava/util/List;Lcma;)V

    .line 448
    return-void
.end method

.method public c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 256
    iget-object v4, p0, Leii;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_upgrade_update_oa_config"

    .line 3083
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 264
    if-eqz v4, :cond_2

    .line 265
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Leii;->d:Ljava/util/Map;

    const-string/jumbo v5, "oa_user"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejx;

    .line 267
    .local v0, "oaTopicModel":Lejx;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lejx;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 272
    .end local v0    # "oaTopicModel":Lejx;
    :cond_2
    const-string/jumbo v4, "oa_user"

    invoke-static {v4}, Leii;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 273
    .local v2, "saveTopicVersion":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 274
    new-instance v1, Lejx;

    invoke-direct {v1}, Lejx;-><init>()V

    .line 275
    .local v1, "topicModel":Lejx;
    const-string/jumbo v4, "oa_user"

    iput-object v4, v1, Lejx;->b:Ljava/lang/String;

    .line 276
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lejx;->a:Ljava/lang/Long;

    .line 277
    invoke-static {v1}, Leii;->a(Lejx;)V

    .line 278
    iget-object v4, p0, Leii;->d:Ljava/util/Map;

    const-string/jumbo v5, "oa_user"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v4, "ConfigEngine"

    const-string/jumbo v5, "ConfigEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syncOAConfigService ver="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Leii;->d()V

    goto :goto_0
.end method
