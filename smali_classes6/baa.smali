.class public final Lbaa;
.super Lazx;
.source "DingEditActivityV2Presenter.java"


# instance fields
.field private C:Ljava/lang/String;

.field private D:J

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

.field private J:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

.field private K:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field private L:Z


# direct methods
.method public constructor <init>(Lazy$b;)V
    .locals 1
    .param p1, "view"    # Lazy$b;

    .prologue
    .line 62
    invoke-direct {p0}, Lazx;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaa;->L:Z

    .line 63
    iput-object p1, p0, Lbaa;->y:Lazy$b;

    .line 64
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "newUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "oldUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-nez p0, :cond_1

    .line 577
    const/4 p0, 0x0

    .line 588
    .end local p0    # "newUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 579
    .restart local p0    # "newUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    if-eqz p1, :cond_0

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v0, "preUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 584
    .local v1, "uid":Ljava/lang/Long;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 585
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "uid":Ljava/lang/Long;
    :cond_3
    move-object p0, v0

    .line 588
    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)Z
    .locals 4
    .param p1, "objectDingSent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "hasContentChanged":Z
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 569
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lbaa;->H:Ljava/lang/String;

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 572
    :cond_0
    :goto_0
    return v1

    .line 570
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final D()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lbaa;->L:Z

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 3130
    :cond_1
    const-string/jumbo v0, "ding_giveup_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public final J()Z
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lbju;->h()Z

    move-result v0

    return v0
.end method

.method public final K()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lbaa;->i:Z

    return v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isCanModifySelectUsers()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;)V
    .locals 1
    .param p1, "deadlineRemindType"    # Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .prologue
    .line 231
    iput-object p1, p0, Lbaa;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 232
    iget-object v0, p0, Lbaa;->J:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    if-eq p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->z()V

    .line 235
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V
    .locals 14
    .param p1, "objectDingSent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .param p2, "sendTimeMillis"    # J

    .prologue
    .line 313
    .line 3317
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9400
    :cond_0
    :goto_0
    return-void

    .line 3321
    :cond_1
    if-nez p1, :cond_2

    .line 3322
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 3323
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 3324
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "send ding failed, objectDingSent is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 3328
    :cond_2
    iget-boolean v0, p0, Lbaa;->i:Z

    if-eqz v0, :cond_15

    .line 3444
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    .line 3445
    invoke-interface {v0}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 4326
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3445
    if-eqz v0, :cond_4

    .line 3447
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3448
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3450
    :cond_3
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 5326
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3450
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 3454
    :cond_4
    iget-object v0, p0, Lbaa;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v0}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 3457
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbaa;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    if-ne v0, v1, :cond_8

    .line 3458
    iget-wide v0, p0, Lbaa;->r:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/Long;)V

    .line 3460
    iget-object v0, p0, Lbaa;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(JZ)V

    .line 3461
    iget-object v0, p0, Lbaa;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v0}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 3468
    :goto_1
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->y()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(Z)V

    .line 3470
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbkf;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3471
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 3475
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 5547
    invoke-direct {p0, p1}, Lbaa;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)Z

    move-result v6

    .line 5549
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbaa;->I:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    .line 5550
    invoke-interface {v0}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbaa;->I:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v1

    .line 6326
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 5550
    if-eq v0, v1, :cond_a

    :cond_6
    const/4 v0, 0x1

    .line 5552
    :goto_3
    iget-wide v2, p0, Lbaa;->s:J

    iget-wide v4, p0, Lbaa;->r:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 5554
    :goto_4
    iget-object v2, p0, Lbaa;->J:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    iget-object v3, p0, Lbaa;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    if-eq v2, v3, :cond_c

    const/4 v2, 0x1

    .line 5556
    :goto_5
    iget-object v3, p0, Lbaa;->K:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iget-object v4, p0, Lbaa;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-eq v3, v4, :cond_d

    const/4 v3, 0x1

    .line 5558
    :goto_6
    iget-object v4, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v4}, Lazy$b;->r()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lbaa;->k:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lbaa;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x1

    .line 5560
    :goto_7
    iget-object v5, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v5}, Lazy$b;->s()Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lbaa;->l:Ljava/util/List;

    invoke-static {v5, v7}, Lbaa;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    .line 5562
    :goto_8
    if-nez v6, :cond_7

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-eqz v5, :cond_10

    :cond_7
    const/4 v0, 0x1

    .line 3477
    :goto_9
    if-nez v0, :cond_11

    .line 3478
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 3479
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 3480
    sget v0, Laxp$i;->dt_ding_conference_edit_no_change:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 3464
    :cond_8
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(JZ)V

    goto/16 :goto_1

    .line 3473
    :cond_9
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    goto/16 :goto_2

    .line 5550
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 5552
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 5554
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 5556
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 5558
    :cond_e
    const/4 v4, 0x0

    goto :goto_7

    .line 5560
    :cond_f
    const/4 v5, 0x0

    goto :goto_8

    .line 5562
    :cond_10
    const/4 v0, 0x0

    goto :goto_9

    .line 3485
    :cond_11
    const-string/jumbo v4, ""

    .line 3486
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 3487
    instance-of v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v1, :cond_12

    .line 3488
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 3492
    :cond_12
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbaa;->k:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lbaa;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v10

    .line 3495
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->s()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbaa;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lbaa;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    .line 3498
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3499
    iget-object v0, p0, Lbaa;->f:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    .line 3500
    iget-object v0, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3507
    :cond_13
    :goto_a
    new-instance v0, Lbfa;

    iget-object v1, p0, Lbaa;->b:Ljava/lang/String;

    .line 7109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 3508
    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 3509
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v3

    .line 3512
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->i()J

    move-result-wide v6

    .line 3513
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Y()J

    move-result-wide v8

    iget-object v12, p0, Lbaa;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 3516
    invoke-static {v12}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v12

    iget-object v13, p0, Lbaa;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 3517
    invoke-static {v13}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v13

    invoke-direct/range {v0 .. v13}, Lbfa;-><init>(JILjava/lang/String;Ljava/util/List;JJLjava/util/List;Ljava/util/List;II)V

    .line 3519
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    new-instance v1, Lbaa$2;

    invoke-direct {v1, p0}, Lbaa$2;-><init>(Lbaa;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lbaa;->y:Lazy$b;

    .line 3541
    invoke-interface {v4}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v4

    .line 3519
    invoke-static {v1, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 8085
    iget-object v3, v2, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$115;

    invoke-direct {v4, v2, v0, v1}, Lbbp$115;-><init>(Lbbp;Lbfa;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 8402
    const-string/jumbo v0, "ding_detail_task_more_edit_confirm"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3502
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3503
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 9338
    :cond_15
    const-string/jumbo v1, ""

    .line 9339
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 9340
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_25

    .line 9341
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 9345
    :goto_b
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lbaa;->y:Lazy$b;

    .line 9346
    invoke-interface {v1}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v1

    .line 10326
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 9346
    if-eqz v1, :cond_17

    .line 9348
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 9349
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9351
    :cond_16
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v1

    .line 11326
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 9351
    invoke-virtual {p1, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 9353
    :cond_17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9354
    iget-object v1, p0, Lbaa;->f:Ljava/util/List;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 9355
    iget-object v1, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9362
    :cond_18
    :goto_c
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->r()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbaa;->k:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lbaa;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 9364
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v7

    .line 9367
    iget-wide v8, p0, Lbaa;->p:J

    .line 9369
    invoke-virtual {p0}, Lbaa;->z()Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v10

    .line 9370
    iget-object v1, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v11

    .line 9379
    invoke-direct {p0, p1}, Lbaa;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)Z

    move-result v12

    .line 9381
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lbaa;->I:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v1, :cond_1a

    :cond_19
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    .line 9382
    invoke-interface {v1}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lbaa;->I:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v2}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v2

    .line 12326
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 9382
    if-eq v1, v2, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    move v4, v1

    .line 9385
    :goto_d
    if-eqz v6, :cond_1d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    .line 9388
    :goto_e
    iget-object v2, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertDate()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    .line 9391
    :goto_f
    iget-object v3, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 9392
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    .line 9395
    :goto_10
    if-nez v12, :cond_22

    if-nez v4, :cond_22

    if-nez v1, :cond_22

    if-nez v2, :cond_22

    if-nez v3, :cond_22

    .line 9397
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 9398
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 9399
    sget v0, Laxp$i;->dt_ding_conference_edit_no_change:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 9357
    :cond_1b
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 9358
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c

    .line 9382
    :cond_1c
    const/4 v1, 0x0

    move v4, v1

    goto :goto_d

    .line 9385
    :cond_1d
    const/4 v1, 0x0

    goto :goto_e

    .line 9388
    :cond_1e
    const/4 v2, 0x0

    goto :goto_f

    .line 9392
    :cond_1f
    const/4 v3, 0x0

    goto :goto_10

    :cond_20
    if-eqz v11, :cond_21

    const/4 v3, 0x1

    goto :goto_10

    :cond_21
    const/4 v3, 0x0

    goto :goto_10

    .line 9403
    :cond_22
    new-instance v2, Lbfc;

    invoke-direct {v2}, Lbfc;-><init>()V

    .line 9404
    iget-object v1, p0, Lbaa;->b:Ljava/lang/String;

    .line 13109
    const-wide/16 v12, 0x0

    invoke-static {v1, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 9404
    iput-wide v12, v2, Lbfc;->a:J

    .line 9405
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v1, :cond_23

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 9406
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v1

    .line 9407
    :goto_11
    iput v1, v2, Lbfc;->b:I

    .line 9408
    iput-object v0, v2, Lbfc;->c:Ljava/lang/String;

    .line 9409
    iput-object v5, v2, Lbfc;->d:Ljava/util/List;

    .line 9410
    iput v7, v2, Lbfc;->e:I

    .line 9411
    iput-wide v8, v2, Lbfc;->f:J

    .line 9412
    iput-object v6, v2, Lbfc;->g:Ljava/util/List;

    .line 9413
    if-eqz v10, :cond_24

    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eq v10, v0, :cond_24

    const/4 v0, 0x1

    :goto_12
    iput v0, v2, Lbfc;->h:I

    .line 9414
    iput-object v11, v2, Lbfc;->i:Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    .line 9416
    new-instance v0, Lbaa$1;

    invoke-direct {v0, p0}, Lbaa$1;-><init>(Lbaa;)V

    .line 9438
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    const-class v3, Lcma;

    iget-object v4, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v4}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 14094
    iget-object v3, v1, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$116;

    invoke-direct {v4, v1, v2, v0}, Lbbp$116;-><init>(Lbbp;Lbfc;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9406
    :cond_23
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 9407
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v1

    goto :goto_11

    .line 9413
    :cond_24
    const/4 v0, 0x0

    goto :goto_12

    :cond_25
    move-object v0, v1

    goto/16 :goto_b
.end method

.method public final b(J)V
    .locals 3
    .param p1, "deadlineTimeMillis"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Lbaa;->r:J

    .line 240
    iget-wide v0, p0, Lbaa;->s:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->z()V

    .line 243
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "[DingEdit] view is null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lbaa;->a(Landroid/content/Intent;)V

    .line 2079
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v0

    iput v0, p0, Lbaa;->c:I

    .line 2081
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingIdStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbaa;->b:Ljava/lang/String;

    .line 2084
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbaa;->e:Ljava/lang/String;

    .line 2085
    iget-object v0, p0, Lbaa;->e:Ljava/lang/String;

    iput-object v0, p0, Lbaa;->H:Ljava/lang/String;

    .line 2157
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    .line 2158
    if-eqz v0, :cond_2

    .line 2162
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbaa;->C:Ljava/lang/String;

    .line 2163
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lbaa;->D:J

    .line 2164
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioVolumes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbaa;->E:Ljava/util/List;

    .line 2165
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbaa;->F:Ljava/lang/String;

    .line 2166
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbaa;->G:Ljava/lang/String;

    .line 2168
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;-><init>()V

    .line 2169
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioVolumes()Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    .line 2170
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 2171
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    iput-object v0, p0, Lbaa;->w:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 2091
    :cond_2
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAttachmentObjects()Ljava/util/List;

    move-result-object v0

    .line 2092
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2093
    iget-object v1, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2094
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-object v0, p0, Lbaa;->I:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 2098
    :cond_3
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getBizType()I

    move-result v0

    iput v0, p0, Lbaa;->g:I

    .line 2099
    iget v0, p0, Lbaa;->g:I

    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lbaa;->i:Z

    .line 2102
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v0

    .line 2103
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2104
    iget-object v1, p0, Lbaa;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2108
    :cond_4
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbaa;->d:Ljava/lang/String;

    .line 2111
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-eq v0, v1, :cond_5

    .line 2113
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->setAlertType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 2115
    :cond_5
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lbaa;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 2117
    iget-boolean v0, p0, Lbaa;->i:Z

    if-eqz v0, :cond_a

    .line 2119
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskCCUserList()Ljava/util/List;

    move-result-object v0

    .line 2120
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2121
    iget-object v1, p0, Lbaa;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2123
    :cond_6
    iget-object v0, p0, Lbaa;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lbaa;->m:I

    .line 2126
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskDeadlineTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbaa;->r:J

    .line 2127
    iget-wide v0, p0, Lbaa;->r:J

    iput-wide v0, p0, Lbaa;->s:J

    .line 2128
    iget-wide v0, p0, Lbaa;->r:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    :goto_1
    iput-object v0, p0, Lbaa;->q:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    .line 2133
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskRemind()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v0

    iput-object v0, p0, Lbaa;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 2134
    iget-object v0, p0, Lbaa;->t:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    iput-object v0, p0, Lbaa;->J:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 2135
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lbaa;->K:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 2136
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lbaa;->u:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 2153
    :goto_2
    invoke-virtual {p0}, Lbaa;->w()V

    .line 2175
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->z()V

    .line 2176
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->g()V

    .line 2198
    iget-object v0, p0, Lbaa;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2199
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    iget-object v1, p0, Lbaa;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lazy$b;->c(Ljava/lang/CharSequence;)V

    .line 2202
    :cond_7
    iget-object v0, p0, Lbaa;->f:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2204
    iget-object v4, p0, Lbaa;->y:Lazy$b;

    new-instance v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v6

    iget-object v0, p0, Lbaa;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lbaa;->f:Ljava/util/List;

    .line 2205
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_c

    move v1, v2

    :goto_3
    iget-object v7, p0, Lbaa;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v0, v1, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;ZLjava/lang/String;)V

    .line 2204
    invoke-interface {v4, v5}, Lazy$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 2208
    :cond_8
    iget-object v0, p0, Lbaa;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lbaa;->E:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lbaa;->E:Ljava/util/List;

    .line 2210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-wide v0, p0, Lbaa;->D:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_d

    .line 2213
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v1, p0, Lbaa;->C:Ljava/lang/String;

    .line 2214
    invoke-static {v1}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lbaa;->D:J

    iget-object v6, p0, Lbaa;->E:Ljava/util/List;

    .line 2213
    invoke-interface {v0, v1, v4, v5, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 2214
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 2215
    iget-object v1, p0, Lbaa;->F:Ljava/lang/String;

    invoke-static {v1}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 2216
    iget-object v1, p0, Lbaa;->G:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthCode(Ljava/lang/String;)V

    .line 2217
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1, v2}, Lazy$b;->e(Z)V

    .line 2218
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-static {}, Lbkz;->b()Lbkz;

    move-result-object v2

    invoke-interface {v1, v2}, Lazy$b;->a(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 2219
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    iget-object v2, p0, Lbaa;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lbaa;->G:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5}, Lazy$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    sget-object v2, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-interface {v1, v2}, Lazy$b;->a(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    .line 2221
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v1, v0}, Lazy$b;->a(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 2223
    iput-boolean v3, p0, Lbaa;->L:Z

    .line 2180
    :goto_4
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->h()V

    .line 2182
    iget-object v1, p0, Lbaa;->y:Lazy$b;

    iget-boolean v0, p0, Lbaa;->i:Z

    if-eqz v0, :cond_e

    sget v0, Laxp$i;->ding_remind_type:I

    :goto_5
    invoke-interface {v1, v0}, Lazy$b;->c(I)V

    .line 2183
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    iget-object v1, p0, Lbaa;->n:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-interface {v0, v1}, Lazy$b;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 2184
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->i()V

    .line 2185
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->m()V

    .line 2187
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->l()V

    .line 2189
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->n()V

    .line 2191
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->o()V

    .line 2193
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->p()V

    .line 2194
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->q()V

    .line 75
    invoke-virtual {p0}, Lbaa;->v()V

    goto/16 :goto_0

    .line 2128
    :cond_9
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->UNSET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    goto/16 :goto_1

    .line 2140
    :cond_a
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertDate()J

    move-result-wide v0

    iput-wide v0, p0, Lbaa;->p:J

    .line 2141
    iget-wide v0, p0, Lbaa;->p:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_b

    .line 2142
    iput-wide v8, p0, Lbaa;->p:J

    .line 2148
    :goto_6
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    iput-object v0, p0, Lbaa;->z:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 2150
    iget-object v0, p0, Lbaa;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isDingInWhisperMode()Z

    move-result v0

    iput-boolean v0, p0, Lbaa;->v:Z

    goto/16 :goto_2

    .line 2144
    :cond_b
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_LATER:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    iput-object v0, p0, Lbaa;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    goto :goto_6

    :cond_c
    move v1, v3

    .line 2205
    goto/16 :goto_3

    .line 2225
    :cond_d
    iget-object v0, p0, Lbaa;->y:Lazy$b;

    invoke-interface {v0, v2}, Lazy$b;->f(Z)V

    goto :goto_4

    .line 2182
    :cond_e
    sget v0, Laxp$i;->ding_remind_type_tip:I

    goto :goto_5
.end method

.method protected final x()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 593
    iget-boolean v0, p0, Lbaa;->i:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-super {p0}, Lazx;->x()J

    move-result-wide v0

    .line 597
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lbaa;->o:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lbaa;->p:J

    goto :goto_0
.end method
