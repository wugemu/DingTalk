.class public final Lhhf;
.super Ljava/lang/Object;
.source "FCScheduleCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lhhd;
    .locals 8
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    .line 23
    .line 2094
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 2104
    :goto_0
    return-object v0

    .line 2097
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 2098
    goto :goto_0

    .line 2100
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhd;

    .line 2101
    if-eqz v0, :cond_4

    .line 2236
    iget-object v3, v0, Lhhd;->g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .line 2101
    if-eqz v3, :cond_4

    .line 3236
    iget-object v3, v0, Lhhd;->g:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    .line 2103
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getCorpId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getWorkDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getPlanId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 23
    goto :goto_0
.end method

.method public static a(ZLjava/util/List;Lcma;)V
    .locals 9
    .param p0, "isFast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lhhd;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lhhd;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "planExecutors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lhhd;>;>;"
    const/4 v8, 0x0

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-interface {p2, v8}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "inTimePlanExecutors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v2, "planIdAndCorpIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhd;

    .line 41
    .local v0, "executor":Lhhd;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lhhd;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v0    # "executor":Lhhd;
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 47
    const-string/jumbo v4, "FCScheduleCheck"

    const-string/jumbo v5, "scheduleResultCheckV2"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isFast"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "planIdAndCorpIdMap"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v3, Lhhf$1;

    invoke-direct {v3, v1, p2}, Lhhf$1;-><init>(Ljava/util/List;Lcma;)V

    .line 87
    .local v3, "scheduleListener":Lcma;, "Lcma<Ljava/util/List<Lhjx;>;>;"
    invoke-static {}, Lhqr;->a()Lhqr;

    move-result-object v5

    .line 1180
    const-class v4, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    .line 1181
    new-instance v6, Lhqr$5;

    invoke-direct {v6, v5, v3}, Lhqr$5;-><init>(Lhqr;Lcma;)V

    invoke-interface {v4, v2, v6}, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;->scheduleResultCheckV2(Ljava/util/Map;Liyv;)V

    goto/16 :goto_0

    .line 89
    .end local v3    # "scheduleListener":Lcma;, "Lcma<Ljava/util/List<Lhjx;>;>;"
    :cond_3
    invoke-interface {p2, v8}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
