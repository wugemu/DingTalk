.class public final Ldmx;
.super Ljava/lang/Object;
.source "LuckyTimePlanDataCenter.java"


# static fields
.field private static b:Ldmx;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldmw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldmx;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a()Ldmx;
    .locals 2

    .prologue
    .line 55
    const-class v1, Ldmx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldmx;->b:Ldmx;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ldmx;

    invoke-direct {v0}, Ldmx;-><init>()V

    sput-object v0, Ldmx;->b:Ldmx;

    .line 58
    :cond_0
    sget-object v0, Ldmx;->b:Ldmx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldmx;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Ldmx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    .line 1309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1313
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_lucky_time_plan_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1314
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 1313
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ldmx;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "x0"    # Ldmx;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 37
    .line 3228
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3235
    :cond_0
    :goto_0
    return-object v0

    .line 3233
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 3234
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3241
    invoke-static {}, Ldmy;->a()J

    move-result-wide v0

    const-wide/32 v6, 0xea60

    sub-long v6, v0, v6

    .line 3243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 3244
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3245
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 3246
    iget-wide v8, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_2

    .line 3248
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 3249
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 3251
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3255
    :cond_3
    new-instance v0, Ldmx$5;

    invoke-direct {v0, p0}, Ldmx$5;-><init>(Ldmx;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3262
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_4

    .line 3263
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0x9

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3266
    :goto_2
    if-eqz v1, :cond_0

    .line 3268
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ldmx$6;

    invoke-direct {v2, p0}, Ldmx$6;-><init>(Ldmx;)V

    invoke-virtual {v2}, Ldmx$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {p1, v2}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_2
.end method

.method static synthetic a(Ldmx;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Ldmx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 37
    .line 4180
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldmx$3;

    invoke-direct {v1, p0, p1, p2}, Ldmx$3;-><init>(Ldmx;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method static synthetic b(Ldmx;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "x0"    # Ldmx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    .line 2280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-object v0

    .line 2285
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 2284
    invoke-static {v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2286
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2290
    new-instance v0, Ldmx$7;

    invoke-direct {v0, p0}, Ldmx$7;-><init>(Ldmx;)V

    invoke-virtual {v0}, Ldmx$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v1, v0}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "planDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    const-string/jumbo v0, "luckyTimePlanRead"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 149
    new-instance v1, Ldmx$2;

    invoke-direct {v1, p0, p1, p2}, Ldmx$2;-><init>(Ldmx;Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
