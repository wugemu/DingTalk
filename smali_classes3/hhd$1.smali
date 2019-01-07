.class final Lhhd$1;
.super Lhhd$c;
.source "FCPlanExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhd;


# direct methods
.method constructor <init>(Lhhd;)V
    .locals 0
    .param p1, "this$0"    # Lhhd;

    .prologue
    .line 77
    iput-object p1, p0, Lhhd$1;->a:Lhhd;

    invoke-direct {p0, p1}, Lhhd$c;-><init>(Lhhd;)V

    return-void
.end method

.method private b(Lcom/amap/api/location/AMapLocation;)V
    .locals 9
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    iget-object v0, p0, Lhhd$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkInWhenLoc aMapLocation is null"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd$1;->a:Lhhd;

    iget-object v3, v3, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lhhd$1;->b:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lhhd$1;->a:Lhhd;

    iget-object v1, v1, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lhhd;->a(JJ)V

    .line 110
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkInWhenLoc"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd$1;->a:Lhhd;

    iget-object v3, v3, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const-string/jumbo v3, "aMapLocation"

    aput-object v3, v2, v8

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "retryTimes"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lhhd$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lhhd$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 98
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "checkInWhenLoc fail over retryTimes "

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "planId"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhhd$1;->a:Lhhd;

    iget-object v3, v3, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lhhd$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 100
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-object v1, p0, Lhhd$1;->a:Lhhd;

    invoke-static {v1}, Lhhd;->a(Lhhd;)Lhhd$b;

    move-result-object v1

    invoke-static {v0, v1}, Lhhd;->a(Lhhd;Lhhd$b;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    invoke-virtual {v0, p1}, Lhhd;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lhhd$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1113
    new-instance v1, Lhjq;

    invoke-direct {v1}, Lhjq;-><init>()V

    .line 1114
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-object v0, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v2, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lhjq;->e:Ljava/lang/Long;

    .line 1115
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-object v0, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iput-object v0, v1, Lhjq;->f:Ljava/lang/String;

    .line 1117
    invoke-static {}, Lhha;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhjq;->g:Ljava/lang/String;

    .line 1118
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhjq;->a:Ljava/lang/Double;

    .line 1119
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhjq;->b:Ljava/lang/Double;

    .line 1120
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lhjq;->c:Ljava/lang/Double;

    .line 1122
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-object v0, v0, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iput v7, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    .line 1124
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v2, "doCheckInWhenLoc"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v6

    iget-object v4, p0, Lhhd$1;->a:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-wide v2, p0, Lhhd$1;->b:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v4

    iget-object v5, p0, Lhhd$1;->a:Lhhd;

    invoke-static {v5}, Lhhd;->a(Lhhd;)Lhhd$b;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lhhd;->a(Lhhd;Lhjq;JILhhd$b;)V

    goto/16 :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lhhd$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 108
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-object v1, p0, Lhhd$1;->a:Lhhd;

    invoke-static {v1}, Lhhd;->a(Lhhd;)Lhhd$b;

    move-result-object v1

    invoke-static {v0, v1}, Lhhd;->a(Lhhd;Lhhd$b;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lhhd$1;->b(Lcom/amap/api/location/AMapLocation;)V

    .line 82
    return-void
.end method

.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "startOnceLocation onError"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lhhd$1;->a:Lhhd;

    iget-object v4, v4, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v4, "errorCode"

    aput-object v4, v3, v0

    const/4 v4, 0x3

    if-nez p1, :cond_0

    const-string/jumbo v0, "aMapLocation==null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    iget-object v1, p0, Lhhd$1;->a:Lhhd;

    invoke-static {v1}, Lhhd;->a(Lhhd;)Lhhd$b;

    move-result-object v1

    invoke-static {v0, v1}, Lhhd;->a(Lhhd;Lhhd$b;)V

    .line 132
    iget-object v0, p0, Lhhd$1;->a:Lhhd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lhhd$1;->b:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lhhd$1;->a:Lhhd;

    iget-object v1, v1, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lhhd;->a(JJ)V

    .line 133
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lhhd$1;->b(Lcom/amap/api/location/AMapLocation;)V

    .line 87
    return-void
.end method
