.class public final Lhhh;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "FCResultNotifyHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lclb;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method private a(Lclc;)V
    .locals 9
    .param p1, "model"    # Lclc;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 134
    const-class v4, Lhhk;

    iget-object v5, p1, Lclc;->b:[B

    invoke-static {v4, v5}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "object":Ljava/lang/Object;
    instance-of v4, v2, Lhhk;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 136
    check-cast v3, Lhhk;

    .line 137
    .local v3, "resultModel":Lhhk;
    sget-object v4, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lhhk;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v1, v3, Lhhk;->j:Ljava/util/List;

    .line 140
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lhjr;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjr;

    .line 142
    .local v0, "action":Lhjr;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    .end local v0    # "action":Lhjr;
    :cond_1
    const-string/jumbo v4, "FCResultNotifyHandler"

    const-string/jumbo v5, "handleNotifyFailure"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "planId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lhhk;->d:Ljava/lang/Long;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "corpId"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v3, Lhhk;->e:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "workDate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v3, Lhhk;->l:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "code"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, v3, Lhhk;->a:Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const-string/jumbo v4, "fast_checkin"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    .line 148
    new-instance v5, Lhhh$3;

    invoke-direct {v5, p0, v3}, Lhhh$3;-><init>(Lhhh;Lhhk;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 161
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lhjr;>;"
    .end local v3    # "resultModel":Lhhk;
    :cond_2
    return-void
.end method

.method private static a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;J)V
    .locals 11
    .param p0, "oaCheckInPushObject"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .param p1, "duration"    # J

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v10

    .line 166
    .local v10, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v10, :cond_1

    const-wide/16 v2, 0x0

    .line 167
    .local v2, "orgId":J
    :goto_0
    iget v4, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget v6, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move-wide v0, p1

    invoke-static/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceSuccess(JJIFIIJ)V

    .line 170
    .end local v2    # "orgId":J
    .end local v10    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    return-void

    .line 166
    .restart local v10    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    iget-wide v2, v10, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method static synthetic a(Lhhh;Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lhhk;J)V
    .locals 12
    .param p0, "x0"    # Lhhh;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .param p2, "x2"    # Lhhk;
    .param p3, "x3"    # J

    .prologue
    .line 40
    const-wide/16 v2, 0x0

    .line 3173
    if-eqz p1, :cond_0

    .line 3174
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 3175
    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    .line 3176
    :goto_0
    if-eqz p2, :cond_2

    .line 3177
    const-string/jumbo v0, "108"

    iget-object v1, p2, Lhhk;->a:Ljava/lang/Integer;

    .line 3178
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v6, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget v7, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget v8, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget v9, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    iget-wide v10, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    .line 3177
    invoke-static/range {v0 .. v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;Ljava/lang/String;JJIFIIJ)V

    :cond_0
    :goto_1
    return-void

    .line 3175
    :cond_1
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0

    .line 3181
    :cond_2
    const-string/jumbo v1, "108"

    iget v6, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget v7, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget v8, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget v9, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    iget-wide v10, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static/range {v1 .. v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;JJIFIIJ)V

    goto :goto_1
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 40
    check-cast p1, Lclb;

    .line 2059
    if-eqz p1, :cond_5

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2060
    const-string/jumbo v0, "FCResultNotifyHandler"

    const-string/jumbo v1, "onReceived"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2062
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 2063
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 2064
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2088
    :pswitch_0
    const-class v2, Lhhl;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 2090
    instance-of v2, v0, Lhhl;

    if-eqz v2, :cond_2

    .line 2091
    check-cast v0, Lhhl;

    .line 2092
    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lhhl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2093
    const-string/jumbo v2, "FCResultNotifyHandler"

    const-string/jumbo v3, "handleNotifySuccess"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "planId"

    aput-object v5, v4, v8

    iget-object v5, v0, Lhhl;->h:Ljava/lang/Long;

    aput-object v5, v4, v9

    const-string/jumbo v5, "corpId"

    aput-object v5, v4, v10

    const/4 v5, 0x3

    iget-object v6, v0, Lhhl;->i:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "workDate"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v0, Lhhl;->m:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2096
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v3, v0, Lhhl;->i:Ljava/lang/String;

    iget-object v4, v0, Lhhl;->m:Ljava/lang/String;

    iget-object v5, v0, Lhhl;->h:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->finish(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    .line 3124
    const-string/jumbo v3, "fast_checkin"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    .line 2098
    new-instance v4, Lhhh$1;

    invoke-direct {v4, p0, v0}, Lhhh$1;-><init>(Lhhh;Lhhl;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2106
    iget-object v3, v0, Lhhl;->n:Ljava/lang/Integer;

    invoke-static {v3, v9}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 2108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-static {v3, v4, v5}, Lcms;->a(Landroid/content/Context;J)V

    .line 2109
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lhhh$2;

    invoke-direct {v4, p0, v0}, Lhhh$2;-><init>(Lhhh;Lhhl;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2120
    :cond_1
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v3

    iget-object v0, v0, Lhhl;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lhkx;->a(J)Ljava/lang/Long;

    move-result-object v0

    .line 2121
    if-eqz v0, :cond_3

    .line 2122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lhhh;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;J)V

    .line 2067
    :cond_2
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "auto_check_in"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 2124
    :cond_3
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lhhh;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;J)V

    goto :goto_1

    .line 2071
    :pswitch_1
    invoke-direct {p0, v0}, Lhhh;->a(Lclc;)V

    goto/16 :goto_0

    .line 2078
    :cond_4
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 2079
    :goto_2
    return-void

    .line 2081
    :cond_5
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2064
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
