.class final Lbbp$88;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lbfn;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

.field final synthetic b:Lbfn;

.field final synthetic c:J

.field final synthetic d:Lcma;

.field final synthetic e:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lbfn;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 825
    iput-object p1, p0, Lbbp$88;->e:Lbbp;

    iput-object p2, p0, Lbbp$88;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iput-object p3, p0, Lbbp$88;->b:Lbfn;

    iput-wide p4, p0, Lbbp$88;->c:J

    iput-object p6, p0, Lbbp$88;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    .line 828
    iget-object v0, p0, Lbbp$88;->e:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v3

    iget-object v4, p0, Lbbp$88;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v5, p0, Lbbp$88;->b:Lbfn;

    iget-wide v0, p0, Lbbp$88;->c:J

    iget-object v6, p0, Lbbp$88;->d:Lcma;

    .line 2366
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->j()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->j()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2367
    :cond_0
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "DING_SEND_RATE_EVENT"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "ding invalid!"

    invoke-static {v0, v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    :goto_0
    return-void

    .line 2371
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2503
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->j()Ljava/util/List;

    move-result-object v7

    .line 2504
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 2505
    iget-object v0, v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Initialization:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 3228
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 2506
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(J)V

    .line 2508
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;)V

    .line 2509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(J)V

    .line 3843
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 2513
    :goto_1
    if-nez v0, :cond_d

    .line 2514
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "TASK_SEND_RATE_EVENT"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "ding invalid!"

    invoke-static {v0, v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3847
    :cond_3
    new-instance v8, Lben;

    invoke-direct {v8}, Lben;-><init>()V

    .line 3848
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->j()Ljava/util/List;

    move-result-object v0

    .line 4042
    iput-object v0, v8, Lben;->a:Ljava/util/List;

    .line 3849
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->F()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v0

    .line 3850
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->F()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v9

    if-ne v1, v9, :cond_4

    .line 3851
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v0

    .line 4050
    :cond_4
    iput v0, v8, Lben;->b:I

    .line 4058
    iput-wide v12, v8, Lben;->c:J

    .line 3855
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->am()Ljava/lang/String;

    move-result-object v0

    .line 4074
    iput-object v0, v8, Lben;->e:Ljava/lang/String;

    .line 3857
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    .line 3858
    instance-of v0, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v0, :cond_6

    .line 3859
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v0

    .line 5066
    iput v0, v8, Lben;->d:I

    move-object v0, v1

    .line 3860
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 3861
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 5082
    iput-object v0, v8, Lben;->f:Ljava/lang/String;

    .line 3880
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3881
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3882
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 3883
    if-eqz v0, :cond_5

    .line 3884
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3862
    :cond_6
    instance-of v0, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v0, :cond_7

    .line 3863
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v0

    .line 6066
    iput v0, v8, Lben;->d:I

    .line 3864
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .line 3865
    new-instance v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    invoke-direct {v2}, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;-><init>()V

    .line 3866
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAudioVolumns()Ljava/util/List;

    move-result-object v9

    iput-object v9, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    .line 3867
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getDuration()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    .line 3868
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    .line 3869
    new-instance v0, Lazg;

    invoke-direct {v0}, Lazg;-><init>()V

    .line 3870
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthCode()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lazg;->b:Ljava/lang/String;

    .line 3871
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthMediaId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lazg;->a:Ljava/lang/String;

    .line 3872
    iput-object v0, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->authMedia:Lazg;

    .line 6090
    iput-object v2, v8, Lben;->g:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    goto :goto_2

    .line 3875
    :cond_7
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "TASK_SEND_RATE_EVENT"

    const-string/jumbo v8, "-1"

    const-string/jumbo v9, "ding invalid!"

    invoke-static {v0, v1, v8, v9}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 3877
    goto/16 :goto_1

    .line 6098
    :cond_8
    iput-object v2, v8, Lben;->h:Ljava/util/List;

    .line 3890
    :cond_9
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getMessageType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v2

    if-ne v0, v2, :cond_a

    .line 3891
    const-string/jumbo v0, "msgId"

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3892
    const-string/jumbo v0, "cid"

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6828
    :cond_a
    iget-wide v0, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 3894
    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3895
    const-string/jumbo v0, "parentDingId"

    .line 7828
    iget-wide v10, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 3895
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    :cond_b
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->aa()Ljava/util/Map;

    move-result-object v0

    .line 8106
    iput-object v0, v8, Lben;->i:Ljava/util/Map;

    .line 3899
    new-instance v1, Lbgb;

    invoke-direct {v1}, Lbgb;-><init>()V

    .line 3900
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v0

    .line 9023
    iput v0, v1, Lbgb;->a:I

    .line 3901
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Y()J

    move-result-wide v10

    .line 9031
    iput-wide v10, v1, Lbgb;->b:J

    .line 3903
    new-instance v0, Lbgd;

    invoke-direct {v0}, Lbgd;-><init>()V

    .line 10023
    iput-object v8, v0, Lbgd;->a:Lben;

    .line 3905
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->i()J

    move-result-wide v8

    .line 10027
    iput-wide v8, v0, Lbgd;->b:J

    .line 3906
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->r()Ljava/util/List;

    move-result-object v2

    .line 10035
    iput-object v2, v0, Lbgd;->c:Ljava/util/List;

    .line 10828
    iget-wide v8, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 3907
    invoke-static {v8, v9}, Lbkh;->a(J)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 11828
    iget-wide v8, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 12039
    iput-wide v8, v0, Lbgd;->d:J

    .line 12043
    :cond_c
    iput-object v1, v0, Lbgd;->e:Lbgb;

    goto/16 :goto_1

    .line 12047
    :cond_d
    iput-object v5, v0, Lbgd;->f:Lbfn;

    .line 2519
    iget-object v1, v3, Lbbo;->h:Lbbk;

    new-instance v2, Lbbo$4;

    invoke-direct {v2, v3, v6, v7, v4}, Lbbo$4;-><init>(Lbbo;Lcma;Ljava/util/List;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V

    invoke-virtual {v1, v0, v2}, Lbbk;->a(Lbgd;Lcma;)V

    goto/16 :goto_0

    .line 2377
    :cond_e
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->j()Ljava/util/List;

    move-result-object v2

    .line 2378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2379
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 2380
    iget-object v5, v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 12207
    invoke-virtual {v5, v7}, Lckm;->a(Ljava/lang/Object;)Z

    .line 2381
    iget-object v5, v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    sget-object v7, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Initialization:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 13207
    invoke-virtual {v5, v7}, Lckm;->a(Ljava/lang/Object;)Z

    .line 2383
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(J)V

    .line 2386
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->w()Z

    move-result v5

    .line 2388
    cmp-long v7, v0, v12

    if-lez v7, :cond_f

    if-eqz v5, :cond_10

    .line 2389
    :cond_f
    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;)V

    .line 2390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(J)V

    .line 2397
    :goto_4
    invoke-static {v4, v0, v1}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)Lbcx;

    move-result-object v0

    .line 2398
    if-nez v0, :cond_11

    .line 2399
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "DING_SEND_RATE_EVENT"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "ding invalid!"

    invoke-static {v0, v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2392
    :cond_10
    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->ToSend:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;)V

    .line 2393
    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(J)V

    goto :goto_4

    .line 2403
    :cond_11
    iget-object v1, v0, Lbcx;->c:Ljava/lang/Long;

    .line 14044
    invoke-static {v1, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 14097
    iget-object v1, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->K:Lckm;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 14207
    invoke-virtual {v1, v5}, Lckm;->a(Ljava/lang/Object;)Z

    .line 2405
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->n()V

    .line 2407
    iget-object v1, v3, Lbbo;->h:Lbbk;

    new-instance v5, Lbbo$3;

    invoke-direct {v5, v3, v6, v2, v4}, Lbbo$3;-><init>(Lbbo;Lcma;Ljava/util/List;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V

    invoke-virtual {v1, v0, v5}, Lbbk;->a(Lbcx;Lcma;)V

    goto/16 :goto_0
.end method
