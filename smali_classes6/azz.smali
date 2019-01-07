.class public final Lazz;
.super Lazx;
.source "DingCreateActivityV2Presenter.java"


# instance fields
.field C:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Lcom/alibaba/wukong/im/Message;

.field G:Z

.field H:Z

.field private I:Ljava/lang/String;

.field private J:J

.field private K:Ljava/lang/String;

.field private L:Landroid/net/Uri;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/net/Uri;

.field private O:J

.field private P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Z

.field private T:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private U:Z


# direct methods
.method public constructor <init>(Lazy$b;)V
    .locals 1
    .param p1, "view"    # Lazy$b;

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-direct {p0}, Lazx;-><init>()V

    .line 95
    iput-boolean v0, p0, Lazz;->G:Z

    .line 98
    iput-boolean v0, p0, Lazz;->S:Z

    .line 109
    iput-object p1, p0, Lazz;->y:Lazy$b;

    .line 110
    invoke-static {}, Lbju;->b()Z

    move-result v0

    iput-boolean v0, p0, Lazz;->U:Z

    .line 111
    return-void
.end method

.method private Q()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/16 v8, 0x12

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 197
    .line 4204
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_1

    .line 4205
    const-string/jumbo v0, "[DingCreateV2]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, " createInfo null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->e()V

    .line 198
    :goto_0
    invoke-direct {p0, v9}, Lazz;->c(Z)V

    .line 6334
    iget-object v0, p0, Lazz;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-nez v0, :cond_10

    .line 200
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lazz;->v()V

    .line 201
    return-void

    .line 4211
    :cond_1
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazz;->e:Ljava/lang/String;

    .line 4214
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4215
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioLocalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazz;->Q:Ljava/lang/String;

    .line 4216
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->O:J

    .line 4217
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioVolumes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lazz;->P:Ljava/util/List;

    .line 4221
    :cond_2
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAttachmentObjects()Ljava/util/List;

    move-result-object v0

    .line 4222
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4223
    iget-object v1, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4226
    :cond_3
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazz;->d:Ljava/lang/String;

    .line 4227
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    iput-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    .line 4230
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v0

    .line 4231
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4232
    iget-object v1, p0, Lazz;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4234
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lazz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 4235
    cmp-long v2, v0, v10

    if-eqz v2, :cond_5

    .line 4238
    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 4241
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4249
    :goto_2
    iget-object v1, p0, Lazz;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4250
    iget-object v0, p0, Lazz;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 4253
    :cond_5
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v0

    iput v0, p0, Lazz;->c:I

    .line 4254
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isNavToHome()Z

    move-result v0

    iput-boolean v0, p0, Lazz;->G:Z

    .line 4255
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isContentEditable()Z

    move-result v0

    iput-boolean v0, p0, Lazz;->S:Z

    .line 4256
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lazz;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 4258
    iget-boolean v0, p0, Lazz;->i:Z

    if-eqz v0, :cond_c

    .line 4260
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskCCUserList()Ljava/util/List;

    move-result-object v0

    .line 4261
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4262
    iget-object v1, p0, Lazz;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4264
    :cond_6
    iget-object v0, p0, Lazz;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lazz;->m:I

    .line 4267
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskDeadlineTime()J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->r:J

    .line 4268
    iget-wide v0, p0, Lazz;->r:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 4269
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->UNSET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    iput-object v0, p0, Lazz;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    .line 4270
    iput-wide v10, p0, Lazz;->r:J

    .line 4277
    :cond_7
    :goto_3
    iget-wide v0, p0, Lazz;->r:J

    iput-wide v0, p0, Lazz;->s:J

    .line 4280
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskRemind()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v0

    iput-object v0, p0, Lazz;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 4281
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lazz;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 4301
    :goto_4
    invoke-virtual {p0}, Lazz;->w()V

    .line 4303
    invoke-virtual {p0}, Lazz;->B()V

    goto/16 :goto_0

    .line 4242
    :cond_8
    const-wide/32 v2, 0x40d1c1

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    .line 4244
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_2

    .line 4247
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_2

    .line 4272
    :cond_a
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    iput-object v0, p0, Lazz;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    .line 4273
    iget-wide v0, p0, Lazz;->r:J

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    .line 5102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5104
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v8, :cond_b

    .line 5105
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 5110
    :goto_5
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 5111
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 5112
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 5113
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 4274
    iput-wide v0, p0, Lazz;->r:J

    goto :goto_3

    .line 5107
    :cond_b
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 5108
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 4285
    :cond_c
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertDate()J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->p:J

    .line 4287
    iget-wide v0, p0, Lazz;->p:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_d

    .line 4288
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_LATER:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    iput-object v0, p0, Lazz;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .line 4291
    iget-wide v0, p0, Lazz;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 4292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lazz;->p:J

    .line 4295
    :cond_d
    iget-object v0, p0, Lazz;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-eq v0, v1, :cond_e

    .line 6064
    iget-boolean v0, p0, Lazz;->U:Z

    .line 4295
    if-nez v0, :cond_f

    :cond_e
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 4297
    :goto_6
    iput-object v0, p0, Lazz;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 4298
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isDingInWhisperMode()Z

    move-result v0

    iput-boolean v0, p0, Lazz;->v:Z

    goto/16 :goto_4

    .line 4295
    :cond_f
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 4297
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    goto :goto_6

    .line 6337
    :cond_10
    new-instance v0, Lazz$2;

    invoke-direct {v0, p0}, Lazz$2;-><init>(Lazz;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lazz;->y:Lazy$b;

    .line 6433
    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    .line 6337
    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lazz;->T:Lcma;

    goto/16 :goto_1
.end method

.method private R()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 903
    iget-object v1, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v2, p0, Lazz;->y:Lazy$b;

    iget-object v1, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-interface {v2, v1}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 911
    .local v0, "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    if-eqz v0, :cond_1

    .line 15326
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 911
    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v1, v0}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 914
    :cond_1
    return-void
.end method

.method private S()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 917
    iget-object v0, p0, Lazz;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    iget-object v0, p0, Lazz;->y:Lazy$b;

    iget-object v1, p0, Lazz;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v0, p0, Lazz;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    iput-object v0, p0, Lazz;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 922
    :cond_0
    iget-object v0, p0, Lazz;->Q:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazz;->P:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazz;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lazz;->O:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazz;->S:Z

    .line 926
    :cond_1
    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 928
    iget-object v1, p0, Lazz;->y:Lazy$b;

    new-instance v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-boolean v4, p0, Lazz;->S:Z

    invoke-direct {v2, v3, v0, v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Z)V

    invoke-interface {v1, v2}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 930
    :cond_2
    return-void
.end method

.method static synthetic a(Lazz;)V
    .locals 0
    .param p0, "x0"    # Lazz;

    .prologue
    .line 66
    invoke-direct {p0}, Lazz;->Q()V

    return-void
.end method

.method static synthetic b(Lazz;)V
    .locals 4
    .param p0, "x0"    # Lazz;

    .prologue
    .line 66
    .line 16036
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 16251
    if-eqz v0, :cond_1

    .line 16254
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getBizType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 16037
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 17046
    :goto_1
    if-eqz v1, :cond_0

    .line 17049
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_set_current_filter"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17050
    const-string/jumbo v3, "key_set_current_filter"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17051
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 66
    :cond_0
    return-void

    .line 16254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 16037
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private c(Z)V
    .locals 10
    .param p1, "withRefreshingContent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 307
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->z()V

    .line 308
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->g()V

    .line 310
    if-eqz p1, :cond_1

    .line 6615
    const-string/jumbo v0, "android.intent.action.SEND"

    iget-object v3, p0, Lazz;->D:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lazz;->E:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 6759
    iget-object v0, p0, Lazz;->E:Ljava/lang/String;

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazz;->L:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazz;->L:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_2

    .line 6760
    iget-object v0, p0, Lazz;->y:Lazy$b;

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lazz;->L:Landroid/net/Uri;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 6743
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lazz;->S:Z

    if-eqz v0, :cond_1

    .line 6744
    iget-object v0, p0, Lazz;->Q:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lazz;->P:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lazz;->P:Ljava/util/List;

    .line 6746
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-wide v0, p0, Lazz;->O:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 6748
    iget-object v1, p0, Lazz;->y:Lazy$b;

    iget-object v2, p0, Lazz;->Q:Ljava/lang/String;

    iget-object v3, p0, Lazz;->P:Ljava/util/List;

    iget-wide v4, p0, Lazz;->O:J

    invoke-interface/range {v1 .. v6}, Lazy$b;->a(Ljava/lang/String;Ljava/util/List;JZ)V

    .line 314
    :cond_1
    :goto_1
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->h()V

    .line 316
    iget-object v1, p0, Lazz;->y:Lazy$b;

    iget-boolean v0, p0, Lazz;->i:Z

    if-eqz v0, :cond_17

    sget v0, Laxp$i;->ding_remind_type:I

    :goto_2
    invoke-interface {v1, v0}, Lazy$b;->c(I)V

    .line 317
    iget-object v0, p0, Lazz;->y:Lazy$b;

    iget-object v1, p0, Lazz;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 318
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->i()V

    .line 319
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->m()V

    .line 320
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->l()V

    .line 322
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->n()V

    .line 324
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->o()V

    .line 326
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->p()V

    .line 327
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->q()V

    .line 329
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-virtual {p0}, Lazz;->A()Z

    move-result v1

    invoke-interface {v0, v1}, Lazy$b;->g(Z)V

    .line 330
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-virtual {p0}, Lazz;->A()Z

    move-result v1

    invoke-interface {v0, v1}, Lazy$b;->h(Z)V

    .line 331
    return-void

    .line 6761
    :cond_2
    iget-object v0, p0, Lazz;->E:Ljava/lang/String;

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6762
    iget-object v1, p0, Lazz;->y:Lazy$b;

    iget-object v0, p0, Lazz;->K:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-interface {v1, v0}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lazz;->K:Ljava/lang/String;

    goto :goto_3

    .line 6764
    :cond_4
    iget-object v0, p0, Lazz;->N:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->N:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_0

    .line 6765
    iget-object v0, p0, Lazz;->y:Lazy$b;

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lazz;->N:Landroid/net/Uri;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_0

    .line 6618
    :cond_5
    const-string/jumbo v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v3, p0, Lazz;->D:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lazz;->E:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 6774
    iget-object v0, p0, Lazz;->E:Ljava/lang/String;

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6775
    iget-object v0, p0, Lazz;->M:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6776
    iget-object v0, p0, Lazz;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6777
    if-eqz v0, :cond_6

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v2, :cond_6

    .line 6778
    iget-object v2, p0, Lazz;->y:Lazy$b;

    new-instance v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v4, p0, Lazz;->y:Lazy$b;

    invoke-interface {v4}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    invoke-interface {v2, v3}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto :goto_4

    .line 6783
    :cond_7
    iget-object v0, p0, Lazz;->N:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->N:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_0

    .line 6784
    iget-object v0, p0, Lazz;->y:Lazy$b;

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lazz;->N:Landroid/net/Uri;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_0

    .line 6622
    :cond_8
    iget v0, p0, Lazz;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 6730
    :pswitch_1
    invoke-direct {p0}, Lazz;->S()V

    goto/16 :goto_0

    .line 6625
    :pswitch_2
    iput-boolean v6, p0, Lazz;->G:Z

    .line 6626
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_11

    .line 6628
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 6629
    if-nez v0, :cond_9

    .line 6630
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[DingCreateActivityV2]message content null"

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6633
    :cond_9
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 6790
    :sswitch_0
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6793
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 6795
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    .line 6796
    if-ne v3, v1, :cond_d

    instance-of v4, v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v4, :cond_d

    .line 6797
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v0

    .line 6802
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6803
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[DingCreateActivity] initContentFromTextMsg is null,type:"

    aput-object v2, v0, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6635
    :sswitch_1
    invoke-direct {p0}, Lazz;->R()V

    .line 6636
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lazz;->j:Z

    goto/16 :goto_0

    :cond_a
    move v0, v6

    goto :goto_6

    .line 6640
    :sswitch_2
    invoke-direct {p0}, Lazz;->R()V

    .line 6641
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_7
    iput-boolean v1, p0, Lazz;->j:Z

    goto/16 :goto_0

    :cond_b
    move v1, v6

    goto :goto_7

    .line 6644
    :sswitch_3
    invoke-direct {p0}, Lazz;->R()V

    .line 6645
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_8
    iput-boolean v1, p0, Lazz;->j:Z

    goto/16 :goto_0

    :cond_c
    move v1, v6

    goto :goto_8

    .line 6649
    :sswitch_4
    invoke-direct {p0}, Lazz;->R()V

    goto/16 :goto_0

    .line 6652
    :sswitch_5
    invoke-direct {p0}, Lazz;->R()V

    goto/16 :goto_0

    .line 6655
    :sswitch_6
    iput-boolean v1, p0, Lazz;->R:Z

    .line 6656
    invoke-direct {p0}, Lazz;->R()V

    goto/16 :goto_0

    .line 6660
    :sswitch_7
    invoke-direct {p0}, Lazz;->R()V

    goto/16 :goto_0

    .line 6798
    :cond_d
    const/16 v0, 0x4b0

    if-ne v3, v0, :cond_18

    .line 6799
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 6807
    :cond_e
    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v2

    .line 6808
    invoke-static {v0, v2}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 6809
    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getBizType()I

    move-result v2

    invoke-static {v2}, Lbkh;->a(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lbju;->o()Z

    .line 6819
    iget-object v1, p0, Lazz;->y:Lazy$b;

    if-nez v0, :cond_f

    const-string/jumbo v0, ""

    :cond_f
    invoke-interface {v1, v0}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    .line 6820
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v6}, Lazy$b;->f(Z)V

    goto/16 :goto_0

    .line 6810
    :cond_10
    iput-boolean v6, p0, Lazz;->S:Z

    .line 6811
    if-eqz v0, :cond_0

    .line 6812
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    iget-object v3, p0, Lazz;->y:Lazy$b;

    invoke-interface {v3}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    .line 6813
    iget-object v3, p0, Lazz;->y:Lazy$b;

    invoke-interface {v3, v6}, Lazy$b;->c(Z)V

    .line 6814
    iget-object v3, p0, Lazz;->y:Lazy$b;

    invoke-interface {v3, v1}, Lazy$b;->d(Z)V

    .line 6815
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v1, v2}, Lazy$b;->d(Ljava/lang/CharSequence;)V

    .line 6816
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    iput-object v0, p0, Lazz;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    goto/16 :goto_0

    .line 6825
    :sswitch_8
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 6829
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 6830
    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    if-eqz v3, :cond_0

    .line 6834
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 6835
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6836
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6837
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    .line 6838
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v8

    iput-wide v8, p0, Lazz;->O:J

    .line 6839
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lazz;->P:Ljava/util/List;

    .line 6841
    iget-object v7, p0, Lazz;->y:Lazy$b;

    invoke-interface {v7, v1}, Lazy$b;->e(Z)V

    .line 6842
    iget-object v1, p0, Lazz;->y:Lazy$b;

    iget-object v7, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lazy$b;->a(Ljava/lang/String;)V

    .line 6843
    iget-object v1, p0, Lazz;->y:Lazy$b;

    iget-object v7, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v7}, Lazy$b;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 6844
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-static {}, Lbkz;->b()Lbkz;

    move-result-object v7

    invoke-interface {v1, v7}, Lazy$b;->a(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 6845
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v2, v7}, Lazy$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6846
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v1, v0}, Lazy$b;->a(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 6847
    iget-object v0, p0, Lazz;->y:Lazy$b;

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    .line 6848
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;-><init>()V

    .line 6849
    iget-object v1, p0, Lazz;->P:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    .line 6850
    iget-wide v8, p0, Lazz;->O:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 6851
    invoke-static {v3, v4, v5, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    iput-object v0, p0, Lazz;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 6852
    iput-boolean v6, p0, Lazz;->S:Z

    goto/16 :goto_0

    .line 6877
    :sswitch_9
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 6881
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 6882
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v1, :cond_0

    .line 6883
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 6884
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6885
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 6886
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v1, v0}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6892
    :sswitch_a
    iget-object v0, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 6896
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 6897
    if-eqz v0, :cond_0

    .line 7326
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6897
    if-eqz v1, :cond_0

    .line 6898
    iget-object v1, p0, Lazz;->y:Lazy$b;

    invoke-interface {v1, v0}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_0

    .line 6680
    :cond_11
    invoke-direct {p0}, Lazz;->S()V

    goto/16 :goto_0

    .line 6685
    :pswitch_3
    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6687
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v1, v2, v0, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Z)V

    .line 6688
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_0

    .line 6693
    :pswitch_4
    invoke-direct {p0}, Lazz;->S()V

    goto/16 :goto_0

    .line 6696
    :pswitch_5
    iput-boolean v6, p0, Lazz;->G:Z

    .line 6698
    iget-object v0, p0, Lazz;->y:Lazy$b;

    iget-object v1, p0, Lazz;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    .line 6699
    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6701
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v1, v2, v0, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Z)V

    .line 6702
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_0

    .line 6706
    :pswitch_6
    iput-boolean v6, p0, Lazz;->G:Z

    .line 6708
    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 6710
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v1, v2, v0, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Z)V

    .line 6711
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 6713
    :cond_12
    iget-object v0, p0, Lazz;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6714
    iget-object v0, p0, Lazz;->y:Lazy$b;

    iget-object v1, p0, Lazz;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6718
    :pswitch_7
    iput-boolean v6, p0, Lazz;->G:Z

    .line 7856
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v3

    .line 7857
    if-eqz v3, :cond_13

    .line 7861
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 7862
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getDuration()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioVolumes()Ljava/util/List;

    move-result-object v5

    .line 7861
    invoke-interface {v0, v4, v8, v9, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 7862
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 7863
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 7864
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthCode(Ljava/lang/String;)V

    .line 7865
    iget-object v4, p0, Lazz;->y:Lazy$b;

    invoke-interface {v4, v1}, Lazy$b;->e(Z)V

    .line 7866
    iget-object v4, p0, Lazz;->y:Lazy$b;

    invoke-static {}, Lbkz;->b()Lbkz;

    move-result-object v5

    invoke-interface {v4, v5}, Lazy$b;->a(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 7867
    iget-object v4, p0, Lazz;->y:Lazy$b;

    const-string/jumbo v5, ""

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v7}, Lazy$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7868
    iget-object v2, p0, Lazz;->y:Lazy$b;

    sget-object v4, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-interface {v2, v4}, Lazy$b;->a(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    .line 7869
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2, v0}, Lazy$b;->a(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 7870
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;-><init>()V

    .line 7871
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioVolumes()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    .line 7872
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 7873
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    iput-object v0, p0, Lazz;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 6720
    :cond_13
    iget-object v0, p0, Lazz;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 6721
    iget-object v0, p0, Lazz;->y:Lazy$b;

    iget-object v2, p0, Lazz;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    .line 6724
    :cond_14
    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6725
    iget-object v2, p0, Lazz;->y:Lazy$b;

    new-instance v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v4

    iget-object v0, p0, Lazz;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v5, p0, Lazz;->f:Ljava/util/List;

    .line 6726
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v1, :cond_15

    :goto_9
    invoke-direct {v3, v4, v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Z)V

    .line 6725
    invoke-interface {v2, v3}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_0

    :cond_15
    move v1, v6

    .line 6726
    goto :goto_9

    .line 6733
    :pswitch_8
    invoke-direct {p0}, Lazz;->S()V

    goto/16 :goto_0

    .line 6736
    :pswitch_9
    invoke-direct {p0}, Lazz;->S()V

    goto/16 :goto_0

    .line 6750
    :cond_16
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v6}, Lazy$b;->f(Z)V

    goto/16 :goto_1

    .line 316
    :cond_17
    sget v0, Laxp$i;->ding_remind_type_tip:I

    goto/16 :goto_2

    :cond_18
    move-object v0, v2

    goto/16 :goto_5

    .line 6622
    .line 6633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_8
        0x4 -> :sswitch_1
        0x66 -> :sswitch_5
        0xfb -> :sswitch_4
        0xfc -> :sswitch_8
        0x12c -> :sswitch_7
        0x12d -> :sswitch_7
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x2bc -> :sswitch_9
        0x4b0 -> :sswitch_0
        0x5dc -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final D()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lazz;->S:Z

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lazz;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lazz;->R:Z

    return v0
.end method

.method public final G()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 468
    iget-object v0, p0, Lazz;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    invoke-virtual {p0}, Lazz;->P()V

    .line 474
    :cond_2
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lazz;->c:I

    invoke-static {v0, v1}, Lbjm;->a(Landroid/app/Activity;I)V

    .line 8130
    const-string/jumbo v0, "ding_giveup_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x1

    return v0
.end method

.method public final K()Z
    .locals 1

    .prologue
    .line 1049
    const/4 v0, 0x1

    return v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x1

    return v0
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x1

    return v0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 1064
    iget-boolean v0, p0, Lazz;->U:Z

    return v0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x1

    .line 1072
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isCanModifySelectUsers()Z

    move-result v0

    goto :goto_0
.end method

.method P()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 605
    iget-object v1, p0, Lazz;->Q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lazz;->Q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, "audioFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    const-string/jumbo v1, "delete file failed"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lazz;->Q:Ljava/lang/String;

    .line 612
    .end local v0    # "audioFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;)V
    .locals 0
    .param p1, "deadlineRemindType"    # Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .prologue
    .line 438
    iput-object p1, p0, Lazz;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 439
    return-void
.end method

.method protected final a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V
    .locals 8
    .param p1, "objectDingSent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .param p2, "sendTimeMillis"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 485
    .line 8489
    iget-object v2, p0, Lazz;->y:Lazy$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8496
    :cond_0
    :goto_0
    return-void

    .line 8493
    :cond_1
    if-nez p1, :cond_2

    .line 8494
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 8495
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    goto :goto_0

    .line 8500
    :cond_2
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lazz;->y:Lazy$b;

    .line 8501
    invoke-interface {v2}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v2

    .line 9326
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 8501
    if-eqz v2, :cond_4

    .line 8503
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8504
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8506
    :cond_3
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v2

    .line 10326
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 8506
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 8509
    :cond_4
    iget v2, p0, Lazz;->g:I

    .line 11282
    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    move v2, v1

    .line 8509
    :goto_1
    if-eqz v2, :cond_5

    .line 8510
    iget-wide v4, p0, Lazz;->J:J

    .line 11832
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 8512
    :cond_5
    iget v2, p0, Lazz;->g:I

    .line 12685
    iput v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 8515
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->t()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lazz;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    sget-object v4, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    if-ne v2, v4, :cond_d

    .line 8516
    iget-wide v4, p0, Lazz;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/Long;)V

    .line 8518
    iget-object v2, p0, Lazz;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(JZ)V

    .line 8519
    iget-object v2, p0, Lazz;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v2}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 8526
    :goto_2
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->y()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(Z)V

    .line 8528
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->r()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lbkf;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 8529
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 8533
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 8535
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    .line 8537
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 8539
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    iget-object v4, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceId(Ljava/lang/String;)V

    .line 8540
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    iget-object v4, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 8541
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 8542
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    iget-object v4, p0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    .line 8545
    :cond_6
    iget-boolean v2, p0, Lazz;->i:Z

    if-nez v2, :cond_8

    .line 13064
    iget-boolean v2, p0, Lazz;->U:Z

    .line 8547
    if-eqz v2, :cond_f

    .line 8548
    invoke-virtual {p0}, Lazz;->z()Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v4

    .line 8550
    if-nez v4, :cond_11

    move v2, v0

    .line 8553
    :goto_4
    cmp-long v5, p2, v6

    if-lez v5, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Z)V

    .line 8554
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->c(Z)V

    .line 8555
    invoke-virtual {p1, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V

    .line 8565
    :cond_8
    :goto_5
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 8566
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 8567
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-nez v0, :cond_a

    .line 8569
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 8570
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v2, "im_add_ding_msg"

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8571
    const-string/jumbo v0, "dingMsgFrom"

    const-string/jumbo v2, "imPlus"

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8574
    :cond_9
    const-string/jumbo v0, "cid"

    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8575
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 8576
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 8585
    :cond_a
    :goto_6
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    invoke-static {v0}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 8586
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Ljava/util/List;)V

    .line 8587
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/util/List;)V

    .line 8591
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->B()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8592
    new-instance v3, Lbfn;

    invoke-direct {v3}, Lbfn;-><init>()V

    .line 14057
    iput-boolean v1, v3, Lbfn;->c:Z

    .line 15025
    iput v1, v3, Lbfn;->a:I

    .line 8596
    iget-object v0, p0, Lazz;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    if-eqz v0, :cond_b

    .line 8597
    iget-object v0, p0, Lazz;->A:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v0

    .line 15033
    iput-wide v0, v3, Lbfn;->b:J

    .line 8601
    :cond_b
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v6, p0, Lazz;->T:Lcma;

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lbfn;JLcma;)V

    goto/16 :goto_0

    :cond_c
    move v2, v0

    .line 11282
    goto/16 :goto_1

    .line 8522
    :cond_d
    invoke-virtual {p1, v6, v7, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(JZ)V

    goto/16 :goto_2

    .line 8531
    :cond_e
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    goto/16 :goto_3

    .line 8558
    :cond_f
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Z)V

    .line 8559
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->c(Z)V

    .line 8560
    invoke-virtual {p1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V

    goto/16 :goto_5

    .line 8578
    :cond_10
    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a

    .line 8579
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceId(Ljava/lang/String;)V

    .line 8580
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 8581
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    goto/16 :goto_6

    :cond_11
    move v2, v1

    goto/16 :goto_4
.end method

.method public final b(J)V
    .locals 1
    .param p1, "deadlineTimeMillis"    # J

    .prologue
    .line 443
    iput-wide p1, p0, Lazz;->r:J

    .line 444
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 115
    iget-object v3, p0, Lazz;->y:Lazy$b;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lazz;->y:Lazy$b;

    invoke-interface {v3}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lazz;->y:Lazy$b;

    invoke-interface {v3}, Lazy$b;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[DingCreateV2] view is null"

    aput-object v4, v3, v6

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lazz;->a(Landroid/content/Intent;)V

    .line 122
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isDingInWhisperMode()Z

    move-result v3

    iput-boolean v3, p0, Lazz;->v:Z

    .line 125
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getParentDingIdStr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lazz;->I:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lazz;->I:Ljava/lang/String;

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 126
    iput-wide v4, p0, Lazz;->J:J

    .line 129
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getBizType()I

    move-result v3

    iput v3, p0, Lazz;->g:I

    .line 130
    iget v3, p0, Lazz;->g:I

    invoke-static {v3}, Lbkh;->b(I)Z

    move-result v3

    iput-boolean v3, p0, Lazz;->i:Z

    .line 131
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSubBizType()I

    move-result v3

    iput v3, p0, Lazz;->h:I

    .line 134
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lazz;->D:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lazz;->E:Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lazz;->K:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareImageUriStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareImageUriStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lazz;->L:Landroid/net/Uri;

    .line 139
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareStreamUriStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareStreamUriStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lazz;->N:Landroid/net/Uri;

    .line 140
    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareImageUriList()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "shareUriStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "imageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "uriStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 138
    .end local v0    # "imageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v1    # "shareUriStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "uriStr":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1

    .line 139
    :cond_4
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_2

    .line 150
    .restart local v0    # "imageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v1    # "shareUriStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iput-object v0, p0, Lazz;->M:Ljava/util/List;

    .line 152
    .end local v0    # "imageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_6
    invoke-direct {p0, v6}, Lazz;->c(Z)V

    .line 154
    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v3}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 155
    iget-object v3, p0, Lazz;->y:Lazy$b;

    invoke-interface {v3}, Lazy$b;->A()V

    goto/16 :goto_0

    .line 157
    :cond_7
    invoke-virtual {p0, v6}, Lazz;->b(Z)V

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 6
    .param p1, "fromDraft"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    new-instance v0, Lazz$1;

    invoke-direct {v0, p0}, Lazz$1;-><init>(Lazz;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lazz;->y:Lazy$b;

    .line 190
    invoke-interface {v5}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v5

    .line 171
    invoke-static {v0, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v1, v2, v3, v0}, Lbhg;->a(ILcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/wukong/Callback;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lazz;->Q()V

    goto :goto_0
.end method

.method public final i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 163
    invoke-super {p0}, Lazx;->i()V

    .line 1933
    iget-boolean v0, p0, Lazz;->H:Z

    if-nez v0, :cond_8

    .line 2032
    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->w()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    const/4 v0, 0x1

    .line 1937
    :goto_0
    if-eqz v0, :cond_8

    .line 1941
    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v0, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1946
    iget-object v0, p0, Lazz;->C:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 1947
    if-nez v0, :cond_1

    .line 1948
    new-instance v0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;-><init>()V

    .line 1950
    :cond_1
    iget v2, p0, Lazz;->g:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setBizType(I)V

    .line 1953
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->v()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1954
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->w()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setDingContentAudio(Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;)V

    .line 1955
    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setContent(Ljava/lang/String;)V

    .line 1962
    :goto_1
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v2

    .line 1963
    if-eqz v2, :cond_2

    .line 2326
    iget-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 1963
    if-eqz v3, :cond_2

    .line 1964
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3326
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 1966
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1968
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setDingAttachmentDataList(Ljava/util/List;)V

    .line 1973
    :cond_2
    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1974
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    .line 1976
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->r()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setReceiveUidList(Ljava/util/List;)V

    .line 1980
    :cond_3
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1981
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setSendType(I)V

    .line 1984
    :cond_4
    iget-boolean v2, p0, Lazz;->i:Z

    if-eqz v2, :cond_c

    .line 1986
    iget-object v2, p0, Lazz;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    sget-object v3, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->UNSET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    if-ne v2, v3, :cond_b

    .line 1987
    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setTaskDeadlineTime(J)V

    .line 1992
    :goto_2
    iget-object v2, p0, Lazz;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    if-eqz v2, :cond_5

    .line 1993
    iget-object v2, p0, Lazz;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setTaskRemind(J)V

    .line 1996
    :cond_5
    iget-object v2, p0, Lazz;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-eqz v2, :cond_6

    .line 1997
    iget-object v2, p0, Lazz;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setTaskRemindType(I)V

    .line 2000
    :cond_6
    iget-object v2, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 2002
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->s()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setTaskCCUserList(Ljava/util/List;)V

    .line 2023
    :cond_7
    :goto_3
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;ILcma;)V

    .line 3406
    const-string/jumbo v0, "ding_create_switchback_autosave"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 165
    :cond_8
    return-void

    :cond_9
    move v0, v1

    .line 2032
    goto/16 :goto_0

    .line 1957
    :cond_a
    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setDingContentAudio(Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;)V

    .line 1958
    iget-object v2, p0, Lazz;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1989
    :cond_b
    iget-wide v2, p0, Lazz;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setTaskDeadlineTime(J)V

    goto :goto_2

    .line 2006
    :cond_c
    iget-wide v2, p0, Lazz;->p:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setDingSendTime(J)V

    .line 2007
    iget-wide v2, p0, Lazz;->p:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 2008
    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setCycleRemindRuleObject(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V

    .line 2020
    :goto_4
    iget-boolean v2, p0, Lazz;->v:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setDingInWhisperMode(Z)V

    goto :goto_3

    .line 2010
    :cond_d
    iget-object v2, p0, Lazz;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iget-object v3, p0, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v2

    .line 2011
    if-nez v2, :cond_e

    .line 2012
    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setCycleRemindRuleObject(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V

    goto :goto_4

    .line 2014
    :cond_e
    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setCycleRemindRuleObject(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V

    goto :goto_4
.end method
