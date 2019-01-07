.class public abstract Lazx;
.super Ljava/lang/Object;
.source "DingCreateActivityV2BasePresenter.java"

# interfaces
.implements Lazy$a;


# instance fields
.field protected A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

.field protected B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/data/object/ConversationBoardObject;",
            ">;"
        }
    .end annotation
.end field

.field private C:Landroid/content/BroadcastReceiver;

.field protected a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected m:I

.field protected n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field protected o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

.field protected p:J

.field protected q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

.field protected r:J

.field protected s:J

.field protected t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

.field protected u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field protected v:Z

.field protected w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

.field x:J

.field protected y:Lazy$b;

.field protected z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lazx;->f:Ljava/util/List;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazx;->j:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lazx;->k:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lazx;->l:Ljava/util/List;

    .line 90
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lazx;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 93
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    iput-object v0, p0, Lazx;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .line 97
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->UNSET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    iput-object v0, p0, Lazx;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    .line 100
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->FIFTY_MINUTES:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    iput-object v0, p0, Lazx;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 101
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lazx;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 110
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lazx;->x:J

    .line 115
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-object v0, p0, Lazx;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lazx;->B:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final A()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 578
    invoke-static {}, Lbju;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lazx;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lazx;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lazx;->c:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 581
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lazx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 586
    iget-object v0, p0, Lazx;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lazx;->d:Ljava/lang/String;

    new-instance v0, Lazx$4;

    invoke-direct {v0, p0}, Lazx$4;-><init>(Lazx;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lazx;->y:Lazy$b;

    .line 616
    invoke-interface {v4}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v4

    .line 590
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5058
    iget-object v3, v1, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$112;

    invoke-direct {v4, v1, v2, v0}, Lbbp$112;-><init>(Lbbp;Ljava/lang/String;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final C()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 621
    iget-object v0, p0, Lazx;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lazx;->d:Ljava/lang/String;

    iget-object v2, p0, Lazx;->B:Ljava/util/List;

    iget-object v3, p0, Lazx;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    iget-wide v4, p0, Lazx;->x:J

    .line 6048
    if-eqz v0, :cond_0

    .line 6052
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/ding/ding_select_group_task_board"

    new-instance v0, Lbjv$22;

    invoke-direct/range {v0 .. v5}, Lbjv$22;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ding/data/object/ConversationBoardObject;J)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lazx;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .param p1, "sendTimeMillis"    # J

    .prologue
    .line 179
    iput-wide p1, p0, Lazx;->p:J

    .line 180
    return-void
.end method

.method protected final a(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 258
    if-nez p1, :cond_1

    .line 259
    const-string/jumbo v0, "[DingCreateV2]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->e()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string/jumbo v0, "intent_key_create_ding_info"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    iput-object v0, p0, Lazx;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 265
    iget-object v0, p0, Lazx;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_0

    .line 266
    const-string/jumbo v0, "[DingCreateV2]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createInfo is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->e()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;)V
    .locals 0
    .param p1, "deadlineType"    # Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    .prologue
    .line 164
    iput-object p1, p0, Lazx;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    .line 165
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;)V
    .locals 0
    .param p1, "sendType"    # Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .prologue
    .line 154
    iput-object p1, p0, Lazx;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .line 155
    return-void
.end method

.method protected abstract a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "inWhisperMode"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lazx;->v:Z

    .line 200
    return-void
.end method

.method public final a(ZZ)V
    .locals 10
    .param p1, "ignorePrevent"    # Z
    .param p2, "ignoreMaxCallNum"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 365
    iget-object v2, p0, Lazx;->y:Lazy$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4357
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->r()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    .line 1507
    :goto_1
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v4

    .line 2148
    iget-object v4, v4, Lbbi;->a:Lazb;

    iget v4, v4, Lazb;->e:I

    .line 1508
    if-lez v4, :cond_3

    if-le v2, v4, :cond_3

    .line 1509
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    iget-object v5, p0, Lazx;->y:Lazy$b;

    invoke-interface {v5}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 3134
    const-string/jumbo v2, "ding_send_limit_single"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 1511
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v5, "[checkSendDing]more than maxCountAtTime:"

    aput-object v5, v2, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    move v2, v3

    .line 369
    :goto_2
    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p0}, Lazx;->x()J

    move-result-wide v0

    .line 374
    .local v0, "finalTime":J
    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2, v3}, Lazy$b;->b(Z)V

    .line 375
    iget-object v2, p0, Lazx;->y:Lazy$b;

    sget v3, Laxp$i;->ding_sending:I

    invoke-interface {v2, v3}, Lazy$b;->a(I)V

    .line 376
    new-instance v2, Lazx$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lazx$3;-><init>(Lazx;ZJ)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lazx;->y:Lazy$b;

    .line 485
    invoke-interface {v4}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v4

    .line 376
    invoke-static {v2, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 4353
    if-eqz v2, :cond_0

    .line 4356
    invoke-virtual {p0}, Lazx;->D()Z

    move-result v3

    if-nez v3, :cond_a

    .line 4357
    iget-object v3, p0, Lazx;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1505
    .end local v0    # "finalTime":J
    :cond_2
    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 1516
    :cond_3
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v4

    .line 3141
    iget-object v4, v4, Lbbi;->a:Lazb;

    iget v4, v4, Lazb;->a:I

    .line 1517
    if-le v2, v4, :cond_4

    .line 1518
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    iget-object v5, p0, Lazx;->y:Lazy$b;

    invoke-interface {v5}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 4138
    const-string/jumbo v2, "ding_send_limit_daily"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 1520
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v5, "[checkSendDing]more than remainQuotaByPerson:"

    aput-object v5, v2, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    move v2, v3

    .line 1521
    goto :goto_2

    .line 1525
    :cond_4
    const/16 v4, 0x28

    if-le v2, v4, :cond_5

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    iget-object v4, p0, Lazx;->y:Lazy$b;

    .line 1526
    invoke-interface {v4}, Lazy$b;->k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v4

    invoke-static {v4}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 1528
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "[checkSendDing]call too many"

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1529
    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2, p1}, Lazy$b;->a(Z)V

    move v2, v3

    .line 1530
    goto/16 :goto_2

    .line 1534
    :cond_5
    iget-object v2, p0, Lazx;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v4, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v2, v4, :cond_6

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1538
    :goto_3
    invoke-virtual {p0}, Lazx;->I()Z

    move-result v2

    if-nez v2, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_7

    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->t()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lazx;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    sget-object v7, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    if-ne v2, v7, :cond_7

    iget-wide v8, p0, Lazx;->r:J

    cmp-long v2, v8, v4

    if-gez v2, :cond_7

    .line 1540
    iget-object v2, p0, Lazx;->y:Lazy$b;

    sget v4, Laxp$i;->ding_deadline_before_send_time:I

    invoke-interface {v2, v4}, Lazy$b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 1541
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v4, "[checkSendDing]deadline before send time"

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    move v2, v3

    .line 1542
    goto/16 :goto_2

    .line 1535
    :cond_6
    iget-wide v4, p0, Lazx;->p:J

    goto :goto_3

    .line 1545
    :cond_7
    invoke-virtual {p0}, Lazx;->I()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lazx;->i:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lazx;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v4, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_LATER:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v2, v4, :cond_9

    iget-wide v4, p0, Lazx;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-gez v2, :cond_9

    .line 1546
    invoke-virtual {p0}, Lazx;->N()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1547
    sget v2, Laxp$i;->dt_calendar_remind_time_not_early_than_send_time:I

    invoke-static {v2}, Lcms;->a(I)V

    :goto_4
    move v2, v3

    .line 1551
    goto/16 :goto_2

    .line 1549
    :cond_8
    sget v2, Laxp$i;->dt_calendar_send_time_not_early_than_current_time:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_4

    :cond_9
    move v2, v6

    .line 1553
    goto/16 :goto_2

    .line 4359
    .restart local v0    # "finalTime":J
    :cond_a
    iget-object v3, p0, Lazx;->y:Lazy$b;

    invoke-interface {v3, v2}, Lazy$b;->a(Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public final b()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lazx;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "fromDraft"    # Z

    .prologue
    .line 561
    return-void
.end method

.method public final c()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lazx;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    return-object v0
.end method

.method public final d()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lazx;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    return-object v0
.end method

.method public final e()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 174
    iget-wide v0, p0, Lazx;->p:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 184
    iget-wide v0, p0, Lazx;->r:J

    return-wide v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lazx;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lazx;->C:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lazx;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lazx;->C:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method public final j()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lazx;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lazx;->v:Z

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lazx;->g:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lazx;->h:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lazx;->c:I

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lazx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lazx;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lazx;->i:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lazx;->j:Z

    return v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lazx;->l:Ljava/util/List;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lazx;->m:I

    return v0
.end method

.method public final u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lazx;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    const-string/jumbo v0, "ding_list_ding_send_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v1, v1}, Lazx;->a(ZZ)V

    goto :goto_0
.end method

.method protected final v()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 272
    iget-object v1, p0, Lazx;->y:Lazy$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    new-instance v1, Lazx$1;

    invoke-direct {v1, p0}, Lazx$1;-><init>(Lazx;)V

    iput-object v1, p0, Lazx;->C:Landroid/content/BroadcastReceiver;

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.ding.choose.deadline.remind.type"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v1, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v1, "com.workapp.ding.choose.group_task_board"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lazx;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method protected final w()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 315
    iget-object v1, p0, Lazx;->y:Lazy$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    new-instance v1, Lazx$2;

    invoke-direct {v1, p0}, Lazx$2;-><init>(Lazx;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lazx;->y:Lazy$b;

    .line 348
    invoke-interface {v3}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v3

    .line 318
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 349
    .local v0, "listener":Lcma;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    iget-object v2, p0, Lazx;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbbi;->a(Landroid/app/Activity;Lcma;)V

    goto :goto_0
.end method

.method protected x()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 492
    const-wide/16 v0, 0x0

    .line 494
    .local v0, "sendTime":J
    iget-object v2, p0, Lazx;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v3, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-eq v2, v3, :cond_0

    .line 495
    iget-wide v0, p0, Lazx;->p:J

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long v0, v2, v4

    .line 501
    :cond_0
    return-wide v0
.end method

.method public final y()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 565
    iget-object v0, p0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lazx;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iget-wide v2, p0, Lazx;->x:J

    invoke-static {v0, v1, v2, v3}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;J)V

    .line 566
    return-void
.end method

.method public final z()Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lazx;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    return-object v0
.end method
