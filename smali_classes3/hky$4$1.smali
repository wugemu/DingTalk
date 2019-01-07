.class final Lhky$4$1;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhky$4;->run()V
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
.field final synthetic a:Lhky$4;


# direct methods
.method constructor <init>(Lhky$4;)V
    .locals 0
    .param p1, "this$1"    # Lhky$4;

    .prologue
    .line 733
    iput-object p1, p0, Lhky$4$1;->a:Lhky$4;

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
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 733
    check-cast p1, Lhjw;

    .line 1737
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v0, "check in sucess oaNotifyPushModel="

    aput-object v0, v4, v7

    if-eqz p1, :cond_3

    iget-object v0, p1, Lhjw;->a:Ljava/lang/String;

    :goto_0
    aput-object v0, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    if-eqz p1, :cond_1

    .line 1742
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lcms;->a(Landroid/content/Context;J)V

    .line 1744
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lhky$4$1$1;

    invoke-direct {v2, p0, p1}, Lhky$4$1$1;-><init>(Lhky$4$1;Lhjw;)V

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1754
    iget-object v0, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v0, v0, Lhky$4;->d:Lhky;

    invoke-static {v0}, Lhky;->e(Lhky;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1755
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "oa_cloud_attendance_autopunch_wake"

    invoke-interface {v0, v1, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1764
    :cond_0
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.lightapp.runtime.checkin_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1765
    const-string/jumbo v1, "checkInType"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1769
    const-string/jumbo v0, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "check in success:"

    aput-object v3, v2, v7

    iget-object v3, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v3, v3, Lhky$4;->d:Lhky;

    invoke-static {v3}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    :cond_1
    iget-object v0, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v0, v0, Lhky$4;->a:Lhjq;

    if-eqz v0, :cond_2

    .line 1774
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v0

    iget-object v1, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v1, v1, Lhky$4;->a:Lhjq;

    iget-object v1, v1, Lhjq;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lhkw;->b(J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 1775
    iget-object v0, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v0, v0, Lhky$4;->d:Lhky;

    const-string/jumbo v1, "110"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lhky$4$1;->a:Lhky$4;

    iget-wide v4, v4, Lhky$4;->b:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v4, v4, Lhky$4;->d:Lhky;

    invoke-static {v4}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    iget-object v6, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v6, v6, Lhky$4;->a:Lhjq;

    iget-object v6, v6, Lhjq;->b:Ljava/lang/Double;

    .line 2066
    invoke-static {v6, v12, v13}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v6

    .line 1776
    iget-object v8, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v8, v8, Lhky$4;->a:Lhjq;

    iget-object v8, v8, Lhjq;->a:Ljava/lang/Double;

    .line 3066
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v8

    .line 1776
    iget-object v10, p0, Lhky$4$1;->a:Lhky$4;

    iget v10, v10, Lhky$4;->c:I

    iget-object v11, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v11, v11, Lhky$4;->a:Lhjq;

    iget-object v11, v11, Lhjq;->c:Ljava/lang/Double;

    .line 4066
    invoke-static {v11, v12, v13}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v11

    .line 1775
    invoke-static/range {v0 .. v12}, Lhky;->a(Lhky;Ljava/lang/String;JJDDID)V

    .line 733
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 1737
    goto/16 :goto_0

    .line 1756
    :cond_4
    iget-object v0, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v0, v0, Lhky$4;->d:Lhky;

    invoke-static {v0}, Lhky;->e(Lhky;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1757
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "oa_cloud_attendance_autopunch_wifi"

    invoke-interface {v0, v1, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1758
    :cond_5
    iget-object v0, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v0, v0, Lhky$4;->d:Lhky;

    invoke-static {v0}, Lhky;->e(Lhky;)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 1759
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "oa_cloud_attendance_autopunch_location"

    invoke-interface {v0, v1, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1760
    :cond_6
    iget-object v0, p0, Lhky$4$1;->a:Lhky$4;

    iget-object v0, v0, Lhky$4;->d:Lhky;

    invoke-static {v0}, Lhky;->e(Lhky;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1761
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "oa_cloud_attendance_autopunch_other_fired"

    invoke-interface {v0, v1, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v2, v2, Lhky$4;->d:Lhky;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lhky;->c(Lhky;I)V

    .line 790
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 791
    .local v15, "warnHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "a"

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string/jumbo v2, "ErrorCode"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string/jumbo v2, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, v15}, Lgvi;->warn(Ljava/util/Map;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v2, v2, Lhky$4;->d:Lhky;

    invoke-static {v2}, Lhky;->e(Lhky;)I

    move-result v2

    if-nez v2, :cond_1

    .line 798
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_wake"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 807
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v2, v2, Lhky$4;->d:Lhky;

    const-string/jumbo v3, "107"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lhky$4$1;->a:Lhky$4;

    iget-wide v6, v6, Lhky$4;->b:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v6, v6, Lhky$4;->d:Lhky;

    invoke-static {v6}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const-wide/16 v13, 0x0

    invoke-static/range {v2 .. v14}, Lhky;->a(Lhky;Ljava/lang/String;JJDDID)V

    .line 809
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v3, v3, Lhky$4;->d:Lhky;

    invoke-static {v3}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v2, v4, v5}, Lhkx;->a(J)Ljava/lang/Long;

    .line 812
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "check in fail:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v6, v6, Lhky$4;->d:Lhky;

    .line 813
    invoke-static {v6}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "  errorCode="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " errorMsg="

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p2, v4, v5

    .line 812
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v2, v2, Lhky$4;->d:Lhky;

    invoke-static {v2}, Lhky;->e(Lhky;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 800
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_wifi"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 801
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v2, v2, Lhky$4;->d:Lhky;

    invoke-static {v2}, Lhky;->e(Lhky;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 802
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_location"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 803
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$4$1;->a:Lhky$4;

    iget-object v2, v2, Lhky$4;->d:Lhky;

    invoke-static {v2}, Lhky;->e(Lhky;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 804
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_other_fired"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 783
    return-void
.end method
