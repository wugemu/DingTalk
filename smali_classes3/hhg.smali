.class public final Lhhg;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "FCPlanNotifyHandler.java"


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
    .line 36
    const-class v0, Lclb;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    check-cast p1, Lclb;

    .line 1041
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const-string/jumbo v0, "FCPlanNotifyHandler"

    const-string/jumbo v1, "onReceived degraded!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 1065
    :goto_0
    return-void

    .line 1047
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1049
    :try_start_0
    const-string/jumbo v0, "FCPlanNotifyHandler"

    const-string/jumbo v1, "onReceived"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1051
    if-eqz v0, :cond_1

    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lclc;->b:[B

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1076
    :pswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_push"

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1078
    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;-><init>()V

    .line 1080
    const-class v1, Lhhj;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1081
    instance-of v1, v0, Lhhj;

    if-eqz v1, :cond_8

    .line 1083
    check-cast v0, Lhhj;

    .line 1084
    iget-object v1, v0, Lhhj;->b:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lhhj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1085
    iget-object v1, v0, Lhhj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhhi;

    .line 1086
    if-eqz v1, :cond_2

    .line 1087
    const-string/jumbo v5, "FCPlanNotifyHandler"

    const-string/jumbo v6, "onCheckInReceived plan received"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "operationType"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v1, Lhhi;->d:Ljava/lang/Integer;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    iget-object v5, v1, Lhhi;->d:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lhhi;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1125
    if-eqz v1, :cond_2

    iget-object v5, v1, Lhhi;->a:Lhjs;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lhhi;->a:Lhjs;

    iget-object v5, v5, Lhjs;->a:Ljava/lang/String;

    .line 1126
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lhhi;->c:Ljava/lang/String;

    .line 1127
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1128
    sget-object v5, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v6, v1, Lhhi;->a:Lhjs;

    iget-object v6, v6, Lhjs;->a:Ljava/lang/String;

    iget-object v7, v1, Lhhi;->c:Ljava/lang/String;

    iget-object v1, v1, Lhhi;->a:Lhjs;

    iget-object v1, v1, Lhjs;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->remove(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1130
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1066
    :catch_0
    move-exception v0

    .line 1068
    const-string/jumbo v1, "FCPlanNotifyHandler"

    const-string/jumbo v2, "onReceived"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    :cond_3
    const-string/jumbo v0, "FCPlanNotifyHandler"

    const-string/jumbo v1, "onCheckInReceived handle failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2104
    :cond_4
    if-eqz v1, :cond_2

    :try_start_1
    iget-object v5, v1, Lhhi;->a:Lhjs;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lhhi;->b:Lhhm;

    if-eqz v5, :cond_2

    .line 2105
    iget-object v5, v1, Lhhi;->a:Lhjs;

    .line 2106
    const-string/jumbo v6, "FCPlanNotifyHandler"

    const-string/jumbo v7, "addOrUpdatePlans"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "workDate"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v1, Lhhi;->c:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "corpId"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, v5, Lhjs;->a:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "planId"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, v5, Lhjs;->b:Ljava/lang/Long;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "planType"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, v1, Lhhi;->e:Ljava/lang/Integer;

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "operationType"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget-object v10, v1, Lhhi;->d:Ljava/lang/Integer;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2110
    iget-object v6, v5, Lhjs;->d:Ljava/lang/Long;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lhjs;->c:Ljava/lang/Long;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lhjs;->d:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v5, Lhjs;->c:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 2111
    const-string/jumbo v1, "FCPlanNotifyHandler"

    const-string/jumbo v6, "addOrUpdatePlans push time illegal"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "planId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v5, Lhjs;->b:Ljava/lang/Long;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "startDate"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v5, Lhjs;->c:Ljava/lang/Long;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "endDate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v5, v5, Lhjs;->d:Ljava/lang/Long;

    aput-object v5, v7, v8

    invoke-static {v1, v6, v7}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2115
    :cond_5
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->from(Lhhi;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    move-result-object v1

    .line 2116
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->isValid()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2117
    invoke-virtual {v3, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->add(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2119
    :cond_6
    const-string/jumbo v1, "FCPlanNotifyHandler"

    const-string/jumbo v6, "addOrUpdatePlans push data invalid"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "planId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v5, v5, Lhjs;->b:Ljava/lang/Long;

    aput-object v5, v7, v8

    invoke-static {v1, v6, v7}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1096
    :cond_7
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->setOldFastCheckSwitch(Lhhj;)V

    .line 1098
    :cond_8
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1099
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->add(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V

    goto/16 :goto_1

    .line 1063
    :cond_9
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
