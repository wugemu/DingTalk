.class final Lhky$5;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhky;->a(Lhkz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhkz;


# direct methods
.method constructor <init>(Lhkz;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lhky$5;->a:Lhkz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .prologue
    .line 930
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky$5;->a:Lhkz;

    iget-object v3, v3, Lhkz;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 931
    .local v4, "orgId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    .line 932
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "dispatchMsgAsync orgId not exist, type:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget v8, v8, Lhkz;->b:I

    .line 933
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " planId: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-wide v10, v8, Lhkz;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 932
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-boolean v2, v2, Lhkz;->h:Z

    if-nez v2, :cond_3

    .line 938
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v22

    .line 940
    .local v22, "orgEmployeeExtension":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v22, :cond_2

    .line 941
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "dispatchMsgAsync org not exist, type:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget v8, v8, Lhkz;->b:I

    .line 942
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " planId: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-wide v10, v8, Lhkz;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 941
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_2
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-nez v2, :cond_3

    .line 947
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "dispatchMsgAsync not main org, type:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget v8, v8, Lhkz;->b:I

    .line 948
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " planId: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-wide v10, v8, Lhkz;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 947
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    .end local v22    # "orgEmployeeExtension":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 954
    .local v23, "utArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "org_id"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "dispatchMsgAsync type:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget v8, v8, Lhkz;->b:I

    .line 956
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " planId: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-wide v10, v8, Lhkz;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 955
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v2, v2, Lhkz;->b:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 959
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v2, v2, Lhkz;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 960
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky$5;->a:Lhkz;

    iget v3, v3, Lhkz;->b:I

    sget v6, Lhdn$k;->icon_warn_fill:I

    sget v7, Lhdn$e;->fast_server_fail:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-object v8, v8, Lhkz;->d:Ljava/lang/String;

    .line 961
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lhdn$k;->dt_oa_attend_checkin_fail_server:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 960
    invoke-virtual/range {v2 .. v9}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_4
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v6, "oa_cloud_attendance_fast_check_fail_danmu_show"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 963
    :cond_5
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky$5;->a:Lhkz;

    iget v3, v3, Lhkz;->b:I

    sget v6, Lhdn$k;->icon_warn_fill:I

    sget v7, Lhdn$e;->fast_server_fail:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-object v8, v8, Lhkz;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lhky$5;->a:Lhkz;

    iget-object v9, v10, Lhkz;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lhky$5;->a:Lhkz;

    iget-object v10, v10, Lhkz;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lhky$5;->a:Lhkz;

    iget-object v11, v11, Lhkz;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v12, v0, Lhky$5;->a:Lhkz;

    invoke-virtual/range {v2 .. v12}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v2, v2, Lhkz;->i:I

    if-lez v2, :cond_4

    .line 966
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lhky$5$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhky$5$1;-><init>(Lhky$5;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lhky$5;->a:Lhkz;

    iget v6, v6, Lhkz;->i:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v2, v3, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 980
    :pswitch_1
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "dispatchMsgAsync distance:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget v8, v8, Lhkz;->c:F

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v2, v2, Lhkz;->c:F

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v2, v2, Lhkz;->c:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v21, v2, 0x64

    .line 984
    .local v21, "distanceInt":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lhdn$k;->and_oa_attend_checkin_fail_distance:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 989
    .end local v21    # "distanceInt":I
    .local v9, "distanceDes":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky$5;->a:Lhkz;

    iget v3, v3, Lhkz;->b:I

    sget v6, Lhdn$k;->icon_c_error:I

    sget v7, Lhdn$e;->fast_server_fail:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lhky$5;->a:Lhkz;

    iget-object v8, v8, Lhkz;->d:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v6, "oa_cloud_attendance_fast_check_fail_danmu_show"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 986
    .end local v9    # "distanceDes":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lhdn$k;->dt_oa_attend_checkin_fail_near:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "distanceDes":Ljava/lang/String;
    goto :goto_2

    .line 995
    .end local v9    # "distanceDes":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v11, v2, Lhkz;->b:I

    sget v14, Lhdn$k;->icon_c_error:I

    sget v15, Lhdn$e;->fast_server_fail:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 996
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lhdn$k;->dt_oa_attend_checkin_fail_locate:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-wide v12, v4

    .line 995
    invoke-virtual/range {v10 .. v17}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v6, "oa_cloud_attendance_fast_check_fail_danmu_show"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1002
    :pswitch_3
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v11, v2, Lhkz;->b:I

    sget v14, Lhdn$k;->icon_nowifi:I

    sget v15, Lhdn$e;->fast_server_fail:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1003
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lhdn$k;->dt_oa_attend_checkin_fail_wifi:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-wide v12, v4

    .line 1002
    invoke-virtual/range {v10 .. v17}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v6, "oa_cloud_attendance_fast_check_fail_danmu_show"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1009
    :pswitch_4
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky$5;->a:Lhkz;

    iget-object v3, v3, Lhkz;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhpw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    :pswitch_5
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v11, v2, Lhkz;->b:I

    sget v14, Lhdn$k;->icon_help_fill:I

    sget v15, Lhdn$e;->fast_server_confirm:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->f:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->g:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->j:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhky$5;->a:Lhkz;

    move-object/from16 v20, v0

    move-wide v12, v4

    invoke-virtual/range {v10 .. v20}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V

    goto/16 :goto_0

    .line 1017
    :pswitch_6
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v11, v2, Lhkz;->b:I

    sget v14, Lhdn$k;->icon_warn_fill:I

    sget v15, Lhdn$e;->fast_server_fail:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1018
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lhdn$k;->dt_oa_attend_checkin_fail_server:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-wide v12, v4

    .line 1017
    invoke-virtual/range {v10 .. v17}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v6, "oa_cloud_attendance_fast_check_fail_danmu_show"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1022
    :pswitch_7
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v11, v2, Lhkz;->b:I

    sget v14, Lhdn$k;->icon_checkbox_fill:I

    sget v15, Lhdn$e;->fast_success:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->f:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->g:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget-object v0, v2, Lhkz;->j:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhky$5;->a:Lhkz;

    move-object/from16 v20, v0

    move-wide v12, v4

    invoke-virtual/range {v10 .. v20}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V

    .line 1024
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v6, "oa_cloud_attendance_fast_check_suc_danmu_show"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lhky$5;->a:Lhkz;

    iget v2, v2, Lhkz;->i:I

    if-lez v2, :cond_0

    .line 1027
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lhky$5$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhky$5$2;-><init>(Lhky$5;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lhky$5;->a:Lhkz;

    iget v6, v6, Lhkz;->i:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v2, v3, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
