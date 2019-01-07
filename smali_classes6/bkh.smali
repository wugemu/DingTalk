.class public final Lbkh;
.super Ljava/lang/Object;
.source "DingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 469
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 479
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 486
    invoke-static {p0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lbkh;->A(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 500
    if-nez p0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h()Z

    move-result v0

    goto :goto_0
.end method

.method public static E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 510
    if-nez p0, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v0

    goto :goto_0
.end method

.method public static F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 520
    if-nez p0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->al()Z

    move-result v0

    goto :goto_0
.end method

.method public static G(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 6
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v3, 0x0

    .line 527
    if-nez p0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-object v3

    .line 530
    :cond_1
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 531
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    .line 532
    .local v1, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v4, v5, :cond_3

    instance-of v4, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v4, :cond_3

    .line 535
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local v1    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 536
    .restart local v1    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v4, v5, :cond_0

    instance-of v4, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v4, :cond_0

    .line 538
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->ding_abstract_audio_message:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 541
    .end local v1    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_4
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4824
    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v4}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 543
    .local v0, "bizObject":Ljava/lang/Object;
    instance-of v4, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v4, :cond_0

    .line 546
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .end local v0    # "bizObject":Ljava/lang/Object;
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v2

    .line 547
    .local v2, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->subject:Ljava/lang/String;

    goto :goto_0
.end method

.method public static H(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 554
    const-wide/16 v0, 0x0

    .line 556
    :goto_0
    return-wide v0

    .line 4828
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    goto :goto_0
.end method

.method public static I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J
    .locals 4
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 567
    if-eqz p0, :cond_0

    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5824
    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v2}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 569
    .local v0, "bizObject":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v2, :cond_0

    .line 570
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .end local v0    # "bizObject":Ljava/lang/Object;
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v1

    .line 571
    .local v1, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 576
    .end local v1    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J
    .locals 4
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 583
    if-eqz p0, :cond_0

    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6824
    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v2}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 585
    .local v0, "bizObject":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v2, :cond_0

    .line 586
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .end local v0    # "bizObject":Ljava/lang/Object;
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v1

    .line 587
    .local v1, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 592
    .end local v1    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 599
    if-eqz p0, :cond_0

    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7824
    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v2}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 601
    .local v0, "bizObject":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v2, :cond_0

    .line 602
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .end local v0    # "bizObject":Ljava/lang/Object;
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v1

    .line 603
    .local v1, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-eqz v1, :cond_0

    .line 604
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    .line 608
    .end local v1    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static L(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 7
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    const-wide/32 v2, 0x28426

    .line 612
    if-nez p0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-object v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "2"

    .line 616
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "conversationType"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8629
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 8630
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move-wide v4, v2

    .line 8633
    :goto_1
    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    .line 8636
    :goto_2
    const-string/jumbo v2, "%d:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-wide v4, v0

    .line 8630
    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 8633
    goto :goto_2

    .line 619
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceCid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 620
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceCid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_5
    const-string/jumbo v1, "cid"

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 623
    const-string/jumbo v0, "cid"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static M(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 2
    .param p0, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 929
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 930
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    sget v1, Laxp$i;->dt_ding_list_task:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 935
    :goto_0
    return-object v1

    .line 932
    :cond_0
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    sget v1, Laxp$i;->dt_ding_list_conference:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 935
    :cond_1
    sget v1, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 7
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 947
    if-nez p0, :cond_0

    move v4, v5

    .line 982
    :goto_0
    return v4

    .line 951
    :cond_0
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 952
    goto :goto_0

    .line 11824
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v4}, Lckm;->a()Ljava/lang/Object;

    move-result-object v4

    .line 955
    instance-of v4, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v4, :cond_2

    move v4, v5

    .line 956
    goto :goto_0

    .line 12824
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v4}, Lckm;->a()Ljava/lang/Object;

    move-result-object v2

    .line 959
    check-cast v2, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 961
    .local v2, "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->recurrenceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v6

    .line 962
    goto :goto_0

    .line 965
    :cond_3
    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 966
    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 967
    .local v1, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-nez v1, :cond_4

    move v4, v5

    .line 968
    goto :goto_0

    .line 971
    :cond_4
    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v5

    .line 972
    goto :goto_0

    .line 975
    :cond_6
    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    invoke-static {v4}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->fromRecurRuleModel(Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v0

    .line 976
    .local v0, "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v3

    .line 977
    .local v3, "frequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eq v3, v4, :cond_7

    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eq v3, v4, :cond_7

    move v4, v6

    .line 978
    goto :goto_0

    .end local v0    # "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .end local v1    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .end local v3    # "frequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    :cond_7
    move v4, v5

    .line 982
    goto :goto_0
.end method

.method public static O(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 5
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 1002
    if-nez p0, :cond_1

    .line 1003
    const-string/jumbo v2, ""

    .line 1029
    :cond_0
    :goto_0
    return-object v2

    .line 1006
    :cond_1
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1007
    const-string/jumbo v2, ""

    goto :goto_0

    .line 13824
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v3}, Lckm;->a()Ljava/lang/Object;

    move-result-object v3

    .line 1010
    instance-of v3, v3, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v3, :cond_3

    .line 1011
    const-string/jumbo v2, ""

    goto :goto_0

    .line 14824
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v3}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1014
    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 1015
    .local v1, "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->recurrenceId:Ljava/lang/String;

    .line 1016
    .local v2, "recurrenceId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1021
    :cond_4
    const-string/jumbo v2, ""

    goto :goto_0

    .line 1024
    :cond_5
    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 1025
    .local v0, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-nez v0, :cond_6

    .line 1026
    const-string/jumbo v2, ""

    goto :goto_0

    .line 1029
    :cond_6
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 1033
    if-nez p0, :cond_0

    .line 1034
    const-string/jumbo v0, ""

    .line 1045
    :goto_0
    return-object v0

    .line 1037
    :cond_0
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    const-string/jumbo v0, ""

    goto :goto_0

    .line 15824
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1041
    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v0, :cond_2

    .line 1042
    const-string/jumbo v0, ""

    goto :goto_0

    .line 16824
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1045
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->wrapperUniqueId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static Q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 1054
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static R(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 1063
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lbkh;->t(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)I
    .locals 1
    .param p0, "notificationType"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .prologue
    .line 739
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne p0, v0, :cond_0

    .line 740
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    .line 746
    :goto_0
    return v0

    .line 741
    :cond_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne p0, v0, :cond_1

    .line 742
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    goto :goto_0

    .line 743
    :cond_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne p0, v0, :cond_2

    .line 744
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->NO_REMIND:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    goto :goto_0

    .line 746
    :cond_2
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)Lbcx;
    .locals 21
    .param p0, "sent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .param p1, "notifyTimeMillis"    # J

    .prologue
    .line 768
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v15

    if-nez v15, :cond_1

    .line 769
    :cond_0
    const/4 v7, 0x0

    .line 839
    :goto_0
    return-object v7

    .line 771
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->j()Ljava/util/List;

    move-result-object v10

    .line 772
    .local v10, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->w()Z

    move-result v15

    if-nez v15, :cond_2

    const-wide/16 v16, 0x0

    cmp-long v15, p1, v16

    if-lez v15, :cond_6

    .line 9332
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    invoke-virtual {v15}, Lckm;->a()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 774
    .local v12, "remindTime":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->F()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v8

    .line 775
    .local v8, "level":I
    sget-object v15, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->F()Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 776
    sget-object v15, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v8

    .line 779
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->am()Ljava/lang/String;

    move-result-object v14

    .line 780
    .local v14, "uuid":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v6

    .line 781
    .local v6, "contentObj":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    new-instance v7, Lbcx;

    invoke-direct {v7}, Lbcx;-><init>()V

    .line 782
    .local v7, "dingSendModel":Lbcx;
    instance-of v15, v6, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v15, :cond_7

    move-object v11, v6

    .line 783
    check-cast v11, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 784
    .local v11, "textContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    sget-object v15, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->e:Ljava/lang/Integer;

    .line 785
    invoke-virtual {v11}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lbcx;->g:Ljava/lang/String;

    .line 9681
    .end local v11    # "textContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 804
    invoke-static {v15}, Lbkh;->b(I)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v7, Lbcx;->k:Ljava/lang/Boolean;

    .line 805
    iput-object v10, v7, Lbcx;->a:Ljava/util/List;

    .line 806
    iput-object v14, v7, Lbcx;->f:Ljava/lang/String;

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->r()Ljava/util/List;

    move-result-object v15

    iput-object v15, v7, Lbcx;->o:Ljava/util/List;

    .line 808
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->b:Ljava/lang/Integer;

    .line 809
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v7, Lbcx;->c:Ljava/lang/Long;

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->x()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    :goto_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->q:Ljava/lang/Integer;

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->w()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->s:Ljava/lang/Integer;

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->y()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->y()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->toIdlModel()Lazj;

    move-result-object v15

    iput-object v15, v7, Lbcx;->r:Lazj;

    .line 817
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v3

    .line 818
    .local v3, "attatches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    .line 819
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v7, Lbcx;->i:Ljava/util/List;

    .line 820
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 821
    .local v2, "attach":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v2, :cond_5

    .line 822
    iget-object v0, v7, Lbcx;->i:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 772
    .end local v2    # "attach":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .end local v3    # "attatches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    .end local v6    # "contentObj":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .end local v7    # "dingSendModel":Lbcx;
    .end local v8    # "level":I
    .end local v12    # "remindTime":J
    .end local v14    # "uuid":Ljava/lang/String;
    :cond_6
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 786
    .restart local v6    # "contentObj":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    .restart local v7    # "dingSendModel":Lbcx;
    .restart local v8    # "level":I
    .restart local v12    # "remindTime":J
    .restart local v14    # "uuid":Ljava/lang/String;
    :cond_7
    instance-of v15, v6, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v15, :cond_8

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .line 788
    .local v4, "audioContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    sget-object v15, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->e:Ljava/lang/Integer;

    .line 789
    new-instance v9, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    invoke-direct {v9}, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;-><init>()V

    .line 790
    .local v9, "model":Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAudioVolumns()Ljava/util/List;

    move-result-object v15

    iput-object v15, v9, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    .line 791
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getDuration()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v9, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    .line 792
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    .line 793
    new-instance v5, Lazg;

    invoke-direct {v5}, Lazg;-><init>()V

    .line 794
    .local v5, "authMediaParam":Lazg;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthCode()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lazg;->b:Ljava/lang/String;

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getAuthMediaId()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lazg;->a:Ljava/lang/String;

    .line 796
    iput-object v5, v9, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->authMedia:Lazg;

    .line 797
    iput-object v9, v7, Lbcx;->h:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    goto/16 :goto_2

    .line 799
    .end local v4    # "audioContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    .end local v5    # "authMediaParam":Lazg;
    .end local v9    # "model":Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    :cond_8
    const-string/jumbo v15, "DD"

    const-string/jumbo v16, "DING_SEND_RATE_EVENT"

    const-string/jumbo v17, "-1"

    const-string/jumbo v18, "ding invalid!"

    invoke-static/range {v15 .. v18}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 811
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 812
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 827
    .restart local v3    # "attatches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    :cond_b
    sget-object v15, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getMessageType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 828
    const-string/jumbo v15, "msgId"

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string/jumbo v15, "cid"

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceCid()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9828
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    move-wide/from16 v16, v0

    .line 831
    invoke-static/range {v16 .. v17}, Lbkh;->a(J)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 832
    const-string/jumbo v15, "parentDingId"

    .line 10828
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    move-wide/from16 v16, v0

    .line 832
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->aa()Ljava/util/Map;

    move-result-object v15

    iput-object v15, v7, Lbcx;->j:Ljava/util/Map;

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->i()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->i()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    :goto_6
    iput-object v15, v7, Lbcx;->d:Ljava/lang/Long;

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Y()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v7, Lbcx;->m:Ljava/lang/Long;

    .line 837
    invoke-static/range {p0 .. p0}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    :goto_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->l:Ljava/lang/Integer;

    .line 838
    invoke-static/range {p0 .. p0}, Lbkh;->D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v15, 0x1

    :goto_8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v7, Lbcx;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 835
    :cond_e
    const/4 v15, 0x0

    goto :goto_6

    .line 837
    :cond_f
    const/4 v15, 0x0

    goto :goto_7

    .line 838
    :cond_10
    const/4 v15, 0x0

    goto :goto_8
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Ljava/lang/String;
    .locals 2
    .param p0, "remindType"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 695
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne p0, v0, :cond_0

    .line 696
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->ding_remind_type_phone:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    .line 697
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne p0, v0, :cond_1

    .line 698
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->ding_remind_type_sms:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 699
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->NO_REMIND:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne p0, v0, :cond_2

    .line 700
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_remind_type_no_remind:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->ding_remind_type_app:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "reason"    # Ljava/lang/CharSequence;
    .param p2, "iKnowClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 657
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbkh$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lbkh$1;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "bizType"    # I

    .prologue
    .line 237
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 2
    .param p0, "dingId"    # J

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfv;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p1, "detailObject"    # Lbfv;

    .prologue
    const/4 v0, 0x1

    .line 920
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v1

    if-lez v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 11028
    iget-object v1, p1, Lbfv;->b:Ljava/lang/String;

    .line 924
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dingIdStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    .line 1109
    invoke-static {p0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 62
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .locals 1
    .param p0, "remindType"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 712
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v0, p0, :cond_0

    .line 713
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 719
    :goto_0
    return-object v0

    .line 714
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v0, p0, :cond_1

    .line 715
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0

    .line 716
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->NO_REMIND:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v0, p0, :cond_2

    .line 717
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0

    .line 719
    :cond_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 2
    .param p0, "bizType"    # I

    .prologue
    const/4 v0, 0x1

    .line 272
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1
    .param p0, "bizType"    # I

    .prologue
    .line 297
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1
    .param p0, "bizStatus"    # I

    .prologue
    .line 371
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 1
    .param p0, "bizStatus"    # I

    .prologue
    .line 391
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 1
    .param p0, "bizStatus"    # I

    .prologue
    .line 411
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {p0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 649
    const/16 v0, 0x63

    if-le p0, v0, :cond_0

    .line 650
    const-string/jumbo v0, "99+"

    .line 653
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 4
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {p0}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static h(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .locals 1
    .param p0, "remindTypeValue"    # I

    .prologue
    .line 724
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 725
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 731
    :goto_0
    return-object v0

    .line 726
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 727
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0

    .line 728
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->NO_REMIND:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 729
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->NO_REMIND:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0

    .line 731
    :cond_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0
.end method

.method public static h(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 166
    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {p0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->NOT_RECEIVER:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static l(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->CLEARED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 244
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 261
    if-nez p0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 1681
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 264
    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 2681
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 293
    invoke-static {v0}, Lbkh;->c(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static p(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 304
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 304
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x1

    .line 311
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3689
    iget v1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 311
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 342
    if-nez p0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    invoke-static {p0}, Lbkh;->j(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 358
    if-nez p0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 378
    if-nez p0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 398
    if-nez p0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 418
    if-nez p0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->l()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 6
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v2, 0x0

    .line 431
    if-nez p0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    invoke-static {p0}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v0

    .line 435
    .local v0, "meetingEndTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 436
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static x(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 2
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    .line 442
    if-nez p0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static y(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 6
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4493
    invoke-static {p0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lbkh;->A(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 453
    :goto_0
    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 455
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 4493
    goto :goto_0

    :cond_1
    move v0, v1

    .line 455
    goto :goto_1
.end method

.method public static z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 462
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
