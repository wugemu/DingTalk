.class final Lhhd$5$1;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhd$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lhjw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhhd$5;


# direct methods
.method constructor <init>(Lhhd$5;)V
    .locals 0
    .param p1, "this$1"    # Lhhd$5;

    .prologue
    .line 371
    iput-object p1, p0, Lhhd$5$1;->a:Lhhd$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 371
    .line 1375
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkIn onDataReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v4, v4, Lhhd$5;->e:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    iget-object v0, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v0, v0, Lhhd$5;->e:Lhhd;

    iget-object v1, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v1, v1, Lhhd$5;->b:Lhhd$b;

    invoke-static {v0, v1}, Lhhd;->b(Lhhd;Lhhd$b;)V

    .line 1377
    iget-object v0, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v0, v0, Lhhd$5;->e:Lhhd;

    const-string/jumbo v1, "110"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-wide v4, v4, Lhhd$5;->c:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v4, v4, Lhhd$5;->e:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    iget-object v6, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v6, v6, Lhhd$5;->a:Lhjq;

    iget-object v6, v6, Lhjq;->b:Ljava/lang/Double;

    .line 2066
    invoke-static {v6, v12, v13}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v6

    .line 1378
    iget-object v8, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v8, v8, Lhhd$5;->a:Lhjq;

    iget-object v8, v8, Lhjq;->a:Ljava/lang/Double;

    .line 3066
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v8

    .line 1378
    iget-object v10, p0, Lhhd$5$1;->a:Lhhd$5;

    iget v10, v10, Lhhd$5;->d:I

    iget-object v11, p0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v11, v11, Lhhd$5;->a:Lhjq;

    iget-object v11, v11, Lhjq;->c:Ljava/lang/Double;

    .line 4066
    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v11

    .line 1377
    invoke-virtual/range {v0 .. v12}, Lhhd;->a(Ljava/lang/String;JJDDID)V

    .line 371
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 389
    const-string/jumbo v2, "FCPlanExecutor"

    const-string/jumbo v3, "checkIn onException"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "planId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v6, v6, Lhhd$5;->e:Lhhd;

    iget-object v6, v6, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "errorCode"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "errorMsg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v2, v2, Lhhd$5;->e:Lhhd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v3, v3, Lhhd$5;->b:Lhhd$b;

    invoke-static {v2, v3}, Lhhd;->a(Lhhd;Lhhd$b;)V

    .line 392
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 393
    .local v15, "warnHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "a"

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v2, "ErrorCode"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v2, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, v15}, Lgvi;->warn(Ljava/util/Map;)V

    .line 399
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_wake"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v2, v2, Lhhd$5;->e:Lhhd;

    const-string/jumbo v3, "107"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lhhd$5$1;->a:Lhhd$5;

    iget-wide v6, v6, Lhhd$5;->c:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lhhd$5$1;->a:Lhhd$5;

    iget-object v6, v6, Lhhd$5;->e:Lhhd;

    iget-object v6, v6, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const-wide/16 v13, 0x0

    invoke-virtual/range {v2 .. v14}, Lhhd;->a(Ljava/lang/String;JJDDID)V

    .line 402
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 384
    return-void
.end method
