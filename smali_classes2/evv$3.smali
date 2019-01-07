.class final Levv$3;
.super Ljava/lang/Object;
.source "TeleConfPushListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levv;


# direct methods
.method constructor <init>(Levv;)V
    .locals 0
    .param p1, "this$0"    # Levv;

    .prologue
    .line 318
    iput-object p1, p0, Levv$3;->a:Levv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 18
    .param p1, "message"    # Lcjo$b;

    .prologue
    .line 321
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v12, v0, Lcjo$b;->b:I

    const/16 v13, 0x7d2

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Lcjo$b;->b:I

    const/16 v13, 0x7d8

    if-ne v12, v13, :cond_1

    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v12, v12, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    if-nez v12, :cond_2

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->a(Levv;)V

    .line 329
    move-object/from16 v0, p1

    iget-object v4, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    .line 330
    .local v4, "confPushModel":Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;
    new-instance v8, Leyl;

    invoke-direct {v8}, Leyl;-><init>()V

    .line 331
    .local v8, "object":Leyl;
    invoke-virtual {v8, v4}, Leyl;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;)Leyl;

    .line 333
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    iget-object v13, v8, Leyl;->a:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Levv;->a(Levv;J)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 334
    invoke-static {}, Levi;->p()Levi;

    move-result-object v12

    invoke-virtual {v12}, Levi;->c()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v8, Leyl;->c:Ljava/lang/String;

    .line 335
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v8, Leyl;->h:Ljava/lang/Integer;

    if-eqz v12, :cond_4

    iget-object v12, v8, Leyl;->h:Ljava/lang/Integer;

    .line 336
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 337
    :cond_3
    const-string/jumbo v12, "tele_conf"

    invoke-static {}, Levv;->a()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Receive CONF_PUSH_STATUS_CHANGED Push, ERROR, not my conference, id "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v8, Leyl;->a:Ljava/lang/Long;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 343
    .local v2, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v12, "CONF_PUSH_STATUS_CHANGED push,"

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 344
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "confId "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v8, Leyl;->a:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "uid "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 346
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "action "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "cause "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v8, Leyl;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 348
    const-string/jumbo v12, "tele_conf"

    const-string/jumbo v13, "conference_call"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v12, "ANSWER"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v9

    .line 353
    .local v9, "status":I
    if-eqz v7, :cond_5

    const/4 v12, 0x2

    if-eq v9, v12, :cond_5

    .line 354
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_enter_prompt:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    .line 358
    invoke-static {}, Levi;->p()Levi;

    move-result-object v12

    const/4 v13, 0x1

    .line 4043
    iput-boolean v13, v12, Levi;->r:Z

    .line 359
    invoke-static {}, Levi;->p()Levi;

    move-result-object v12

    const/4 v13, 0x0

    .line 4051
    iput-boolean v13, v12, Levi;->s:Z

    .line 364
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JIZ)V

    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 4228
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    .line 4231
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v13

    invoke-virtual {v13}, Lccr;->c()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    .line 4232
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 4233
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->am(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 4234
    invoke-static {}, Lewg;->c()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4235
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 4236
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    iget-object v0, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4240
    :cond_6
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 4241
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 4242
    iget-object v14, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v14

    iget-object v14, v14, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    iget-object v14, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v14

    iget-object v14, v14, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4243
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 4244
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 4245
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    iget-object v12, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v12}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->P(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 361
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Levv$3;->a:Levv;

    sget v15, Leuj$l;->conf_txt_someone_entered:I

    invoke-static {v14, v15}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Leuv;->a(Ljava/lang/String;JI)V

    goto/16 :goto_1

    .line 371
    .end local v7    # "nick":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_8
    const-string/jumbo v12, "leave-conf"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 373
    .restart local v7    # "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v9

    .line 374
    .restart local v9    # "status":I
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    .line 375
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_a

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_leave_prompt:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    .line 381
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JIZ)V

    goto/16 :goto_0

    .line 378
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Levv$3;->a:Levv;

    sget v15, Leuj$l;->conf_txt_someone_leaved:I

    invoke-static {v14, v15}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Leuv;->a(Ljava/lang/String;JI)V

    goto :goto_2

    .line 383
    .end local v7    # "nick":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_b
    const-string/jumbo v12, "noise"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 384
    invoke-static {}, Lewg;->c()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 385
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_c

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    invoke-static {v13}, Levv;->f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v13

    sget v14, Leuj$l;->conf_txt_noise_prompt_mine:I

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x3

    invoke-virtual/range {v12 .. v16}, Leuv;->a(Ljava/lang/String;JI)V

    goto/16 :goto_0

    .line 388
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 389
    .restart local v7    # "nick":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Levv$3;->a:Levv;

    invoke-static {v14}, Levv;->f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v14

    sget v15, Leuj$l;->conf_txt_noise_prompt:I

    invoke-virtual {v14, v15}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x3

    invoke-virtual/range {v12 .. v16}, Leuv;->a(Ljava/lang/String;JI)V

    goto/16 :goto_0

    .line 394
    .end local v7    # "nick":Ljava/lang/String;
    :cond_d
    const-string/jumbo v12, "mute"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    .line 396
    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(J)Z

    move-result v12

    if-nez v12, :cond_1

    .line 399
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Leze;->b(J)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    .line 400
    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Leze;->a(J)Z

    move-result v12

    if-nez v12, :cond_1

    .line 403
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 404
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JZZ)V

    .line 405
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_11

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_enter_be_muted_mine:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    .line 413
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    goto/16 :goto_0

    .line 408
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 409
    .restart local v7    # "nick":Ljava/lang/String;
    if-eqz v7, :cond_10

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Levv$3;->a:Levv;

    sget v15, Leuj$l;->conf_txt_enter_mute_mode:I

    invoke-static {v14, v15}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    goto :goto_3

    .line 416
    .end local v7    # "nick":Ljava/lang/String;
    :cond_12
    const-string/jumbo v12, "unmute"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    .line 418
    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(J)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 421
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Leze;->b(J)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    .line 422
    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Leze;->a(J)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 425
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JZZ)V

    .line 427
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_16

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_enter_be_unmuted_mine:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    .line 435
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    goto/16 :goto_0

    .line 430
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 431
    .restart local v7    # "nick":Ljava/lang/String;
    if-eqz v7, :cond_15

    .line 432
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Levv$3;->a:Levv;

    sget v15, Leuj$l;->conf_txt_leave_mute_mode:I

    invoke-static {v14, v15}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    goto :goto_4

    .line 438
    .end local v7    # "nick":Ljava/lang/String;
    :cond_17
    const-string/jumbo v12, "HANGUP"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    const-string/jumbo v12, "REDIAL_HANGUP"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    .line 439
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 440
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v7

    .line 441
    .restart local v7    # "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v9

    .line 443
    .restart local v9    # "status":I
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Levi;->p()Levi;

    move-result-object v14

    invoke-virtual {v14}, Levi;->h()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_19

    .line 444
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    invoke-virtual {v12}, Leze;->a()Ljava/lang/String;

    move-result-object v7

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    invoke-virtual {v12}, Leze;->b()I

    move-result v9

    .line 447
    :cond_19
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    if-eqz v9, :cond_1

    .line 448
    iget-object v3, v8, Leyl;->d:Ljava/lang/String;

    .line 449
    .local v3, "cause":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 450
    move-object v5, v7

    .line 451
    .local v5, "content":Ljava/lang/String;
    const/16 v6, 0x67

    .line 452
    .local v6, "extraStatus":I
    const-string/jumbo v12, "NO_ANSWER"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_no_answer:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    const/16 v6, 0x66

    .line 475
    :cond_1a
    :goto_5
    const-string/jumbo v12, "HANGUP"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 476
    invoke-static {}, Lewg;->c()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 477
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_click_redail:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 479
    :cond_1b
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_24

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_leave_prompt:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Leuv;->a(Ljava/lang/String;JI)V

    .line 483
    invoke-static {}, Levi;->p()Levi;

    move-result-object v12

    const/4 v13, 0x1

    .line 5051
    iput-boolean v13, v12, Levi;->s:Z

    .line 484
    invoke-static {}, Levi;->p()Levi;

    move-result-object v12

    const/4 v13, 0x0

    .line 6043
    iput-boolean v13, v12, Levi;->r:Z

    .line 489
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v6, v14}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    .line 490
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-virtual {v12, v14, v15, v6, v13}, Leze;->b(JIZ)V

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JIZ)V

    .line 511
    :cond_1c
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 6252
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v13

    if-eqz v13, :cond_1d

    .line 6253
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 6254
    iget-object v0, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1d

    iget-object v0, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 6255
    iget-object v0, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    .line 6256
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v13

    iput-object v3, v13, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 6257
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v13

    iget-object v0, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 6258
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 6260
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_1d

    .line 6261
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    iget-object v0, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ak(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6265
    :cond_1d
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 6266
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 6267
    iget-object v14, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v14

    iget-object v14, v14, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    iget-object v14, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v14

    iget-object v14, v14, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 6268
    iget-object v14, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v14

    iput-object v13, v14, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    .line 6269
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v13

    iput-object v3, v13, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 6270
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v13

    iget-object v14, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 6271
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 6273
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 6274
    iget-object v13, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v13}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v13

    iget-object v12, v12, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v12}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->P(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 455
    :cond_1e
    const-string/jumbo v12, "UNABLE_CONNECT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 456
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_cannot_connected:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    const/16 v6, 0x67

    goto/16 :goto_5

    .line 458
    :cond_1f
    const-string/jumbo v12, "SHUTDOWN"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 459
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_power_off:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    const/16 v6, 0x68

    goto/16 :goto_5

    .line 461
    :cond_20
    const-string/jumbo v12, "REFUSE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 462
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_refuse:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 463
    const/16 v6, 0x6a

    goto/16 :goto_5

    .line 464
    :cond_21
    const-string/jumbo v12, "NORMAL_CLEARING"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 465
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_hang_up:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    const/16 v6, 0x65

    goto/16 :goto_5

    .line 467
    :cond_22
    const-string/jumbo v12, "OUT_OF_SERVICE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 468
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_someone_leaved:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    const/16 v6, 0x69

    goto/16 :goto_5

    .line 470
    :cond_23
    const-string/jumbo v12, "CALLING"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 471
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_in_other_confs:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    const/16 v6, 0x6b

    goto/16 :goto_5

    .line 487
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v14, v15, v13}, Leuv;->a(Ljava/lang/String;JI)V

    goto/16 :goto_6

    .line 494
    :cond_25
    invoke-static {}, Lewg;->c()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 495
    const/4 v11, 0x0

    .line 497
    .local v11, "times":I
    :try_start_0
    iget-object v12, v8, Leyl;->c:Ljava/lang/String;

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 498
    .local v10, "timeStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_26

    .line 499
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 504
    .end local v10    # "timeStr":Ljava/lang/String;
    :cond_26
    :goto_8
    invoke-static {}, Levv;->a()Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "REDAIL_HANGUP, times "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    iget-object v12, v12, Levv;->e:[Ljava/lang/String;

    array-length v12, v12

    if-ge v11, v12, :cond_1c

    .line 506
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_redailing_ongoing:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Levv$3;->a:Levv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Levv;->e:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v14, v15, v13}, Leuv;->a(Ljava/lang/String;JI)V

    goto/16 :goto_7

    .line 516
    .end local v3    # "cause":Ljava/lang/String;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "extraStatus":I
    .end local v7    # "nick":Ljava/lang/String;
    .end local v9    # "status":I
    .end local v11    # "times":I
    :cond_27
    const-string/jumbo v12, "start-talking"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 517
    iget-object v12, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Levi;->p()Levi;

    move-result-object v14

    invoke-virtual {v14}, Levi;->h()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_29

    .line 518
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    invoke-virtual {v12}, Leze;->b()I

    move-result v9

    .line 519
    .restart local v9    # "status":I
    const/4 v12, 0x2

    if-eq v9, v12, :cond_28

    .line 520
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JIZ)V

    .line 522
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->b(JZZ)V

    goto/16 :goto_0

    .line 524
    .end local v9    # "status":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v9

    .line 525
    .restart local v9    # "status":I
    const/4 v12, 0x2

    if-eq v9, v12, :cond_2a

    .line 526
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 528
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(JZZ)V

    goto/16 :goto_0

    .line 530
    .end local v9    # "status":I
    :cond_2b
    const-string/jumbo v12, "stop-talking"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(JZZ)V

    .line 532
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->b(JZZ)V

    goto/16 :goto_0

    .line 533
    :cond_2c
    const-string/jumbo v12, "callee-is-calling"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 534
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/16 v14, 0x6b

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    .line 535
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 536
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->e(Levv;)Leze;

    move-result-object v12

    iget-object v13, v8, Leyl;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Leze;->a(JIZ)V

    goto/16 :goto_0

    .line 537
    :cond_2d
    const-string/jumbo v12, "mute-all"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 538
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(ZZ)V

    .line 539
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_conference_compere_mute_everyone:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 542
    :cond_2e
    const-string/jumbo v12, "unmute-all"

    iget-object v13, v8, Leyl;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 543
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(ZZ)V

    .line 544
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 545
    move-object/from16 v0, p0

    iget-object v12, v0, Levv$3;->a:Levv;

    invoke-static {v12}, Levv;->b(Levv;)Leuv;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Levv$3;->a:Levv;

    sget v14, Leuj$l;->conf_txt_conferenc_compere_umute_everyone:I

    invoke-static {v13, v14}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Leuv;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .restart local v3    # "cause":Ljava/lang/String;
    .restart local v5    # "content":Ljava/lang/String;
    .restart local v6    # "extraStatus":I
    .restart local v7    # "nick":Ljava/lang/String;
    .restart local v9    # "status":I
    .restart local v11    # "times":I
    :catch_0
    move-exception v12

    goto/16 :goto_8
.end method
