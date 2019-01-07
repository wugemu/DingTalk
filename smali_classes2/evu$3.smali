.class final Levu$3;
.super Ljava/lang/Object;
.source "TeleConfNotificationListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levu;


# direct methods
.method constructor <init>(Levu;)V
    .locals 0
    .param p1, "this$0"    # Levu;

    .prologue
    .line 376
    iput-object p1, p0, Levu$3;->a:Levu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 18
    .param p1, "messageEvent"    # Lcjo$b;

    .prologue
    .line 379
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Lcjo$b;->b:I

    const/16 v13, 0x7d4

    if-eq v12, v13, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v12, v12, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;

    if-eqz v12, :cond_0

    .line 386
    move-object/from16 v0, p1

    iget-object v5, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;

    .line 387
    .local v5, "chatStatusChangedModel":Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->action:Ljava/lang/String;

    .line 388
    .local v2, "action":Ljava/lang/String;
    iget-object v11, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->uuid:Ljava/lang/String;

    .line 389
    .local v11, "uuid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 393
    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->scoreCnt:Ljava/lang/Integer;

    if-eqz v12, :cond_3

    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->scoreCnt:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 394
    .local v6, "count":I
    :goto_1
    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->avgScore:Ljava/lang/Float;

    if-eqz v12, :cond_4

    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->avgScore:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 396
    .local v3, "average":F
    :goto_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 397
    .local v4, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v12, "CONF_PUSH_STATUS_CHANGED Push,"

    invoke-virtual {v4, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 398
    const-string/jumbo v12, "action "

    invoke-virtual {v4, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 399
    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 400
    const-string/jumbo v12, ","

    invoke-virtual {v4, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 401
    const-string/jumbo v12, "uuid "

    invoke-virtual {v4, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 402
    invoke-virtual {v4, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 403
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v12, "caller-bye"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 406
    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->showScoreView:Ljava/lang/Boolean;

    if-eqz v12, :cond_0

    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->showScoreView:Ljava/lang/Boolean;

    .line 407
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 410
    .local v8, "currTime":J
    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->endTime:Ljava/lang/Long;

    if-eqz v12, :cond_0

    .line 411
    const-wide/32 v12, 0xea60

    iget-object v14, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 412
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    new-instance v13, Levu$3$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v6, v3}, Levu$3$1;-><init>(Levu$3;Ljava/lang/String;IF)V

    invoke-virtual {v12, v13}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 430
    :cond_2
    invoke-static {v8, v9}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "currTimeStr":Ljava/lang/String;
    iget-object v12, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatStatusChangedModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v10

    .line 433
    .local v10, "sysTimeStr":Ljava/lang/String;
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Levu;->i()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Show score,Time "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v3    # "average":F
    .end local v4    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v6    # "count":I
    .end local v7    # "currTimeStr":Ljava/lang/String;
    .end local v8    # "currTime":J
    .end local v10    # "sysTimeStr":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 394
    .restart local v6    # "count":I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2
.end method
