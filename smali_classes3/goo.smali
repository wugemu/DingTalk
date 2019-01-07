.class public final Lgoo;
.super Ljava/lang/Object;
.source "SpaceRpcUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 10
    .param p0, "dentryModel"    # Lghg;
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 547
    if-eqz p0, :cond_11

    .line 548
    new-instance v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 549
    .local v3, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v5, p0, Lghg;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 550
    iget-object v5, p0, Lghg;->b:Ljava/lang/Long;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lghg;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 551
    iget-object v5, p0, Lghg;->p:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, "SpaceRpcUtil"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getDentryModel spaceId diff !!! dentry.fileId = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lghg;->a:Ljava/lang/String;

    .line 553
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", spaceId = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ", dentryModel.spaceId = "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lghg;->p:Ljava/lang/Long;

    .line 554
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 552
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    invoke-static {}, Lgpr;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lghg;->p:Ljava/lang/Long;

    .line 2044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 556
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_8

    .line 557
    :cond_1
    invoke-virtual {v3, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 561
    :goto_1
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 562
    iget-object v5, p0, Lghg;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 563
    iget-object v5, p0, Lghg;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lghg;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 567
    const-string/jumbo v5, "file"

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 568
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 569
    .local v0, "index":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 570
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    .line 572
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 573
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 574
    .local v1, "indexExtension":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 575
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 590
    .end local v0    # "index":I
    .end local v1    # "indexExtension":I
    :cond_3
    :goto_2
    iget-object v5, p0, Lghg;->j:Ljava/lang/Long;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lghg;->j:Ljava/lang/Long;

    .line 591
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 590
    :goto_3
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 592
    iget-object v5, p0, Lghg;->l:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setVersionType(Ljava/lang/String;)V

    .line 593
    iget-object v5, p0, Lghg;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setContentType(Ljava/lang/String;)V

    .line 594
    iget-object v5, p0, Lghg;->h:Ljava/lang/Long;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lghg;->h:Ljava/lang/Long;

    .line 595
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 594
    :goto_4
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 596
    iget-object v5, p0, Lghg;->m:Ljava/lang/Long;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lghg;->m:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_5
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExpireTime(J)V

    .line 597
    iget-object v5, p0, Lghg;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 598
    iget-object v5, p0, Lghg;->i:Lghr;

    if-eqz v5, :cond_4

    .line 599
    iget-object v5, p0, Lghg;->i:Lghr;

    iget-object v5, v5, Lghr;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreatorEmail(Ljava/lang/String;)V

    .line 601
    :cond_4
    iget-object v5, p0, Lghg;->k:Lghr;

    if-eqz v5, :cond_5

    .line 602
    iget-object v5, p0, Lghg;->k:Lghr;

    iget-object v5, v5, Lghr;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifierEmail(Ljava/lang/String;)V

    .line 604
    :cond_5
    iget-object v5, p0, Lghg;->u:Ljava/lang/Integer;

    .line 3033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 604
    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCrypt(Z)V

    .line 605
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lghg;->v:Lghf;

    if-eqz v5, :cond_6

    .line 606
    iget-object v5, p0, Lghg;->v:Lghf;

    iget-object v5, v5, Lghf;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAppId(Ljava/lang/String;)V

    .line 607
    iget-object v5, p0, Lghg;->v:Lghf;

    iget-object v5, v5, Lghf;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCorpId(Ljava/lang/String;)V

    .line 608
    iget-object v5, p0, Lghg;->v:Lghf;

    iget-object v5, v5, Lghf;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setProirity(Ljava/lang/String;)V

    .line 611
    :cond_6
    iget-object v5, p0, Lghg;->r:Ljava/lang/Long;

    .line 3044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 611
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadCount(J)V

    .line 612
    iget-object v5, p0, Lghg;->s:Ljava/lang/Long;

    .line 4044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 612
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPreviewCount(J)V

    .line 613
    iget-object v5, p0, Lghg;->t:Ljava/lang/Long;

    .line 5044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 613
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTransferCount(J)V

    .line 615
    iget-object v5, p0, Lghg;->y:Ljava/lang/Long;

    if-nez v5, :cond_f

    const-string/jumbo v5, "0"

    :goto_7
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLastCommentId(Ljava/lang/String;)V

    .line 616
    iget-object v5, p0, Lghg;->w:Ljava/lang/Long;

    .line 6044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 616
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCommentCount(J)V

    .line 617
    iget-object v5, p0, Lghg;->x:Ljava/lang/Long;

    .line 7044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 617
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLikeCount(J)V

    .line 618
    iget-object v5, p0, Lghg;->z:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 619
    iget-object v5, p0, Lghg;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentId(Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v5, p0, Lghg;->A:Ljava/util/List;

    invoke-static {v5}, Lgqd;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 622
    iget-object v5, p0, Lghg;->K:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 623
    iget-object v5, p0, Lghg;->L:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 624
    iget-object v5, p0, Lghg;->M:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 625
    iget-object v5, p0, Lghg;->N:Ljava/lang/Double;

    .line 7066
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v6

    .line 625
    double-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 626
    iget-object v5, p0, Lghg;->O:Ljava/lang/Double;

    .line 8066
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v6

    .line 626
    double-to-int v5, v6

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 627
    iget-object v5, p0, Lghg;->P:Ljava/lang/Double;

    .line 9066
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v6

    .line 627
    double-to-int v5, v6

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 628
    iget-object v5, p0, Lghg;->Q:Ljava/lang/Integer;

    .line 10033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 628
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 629
    iget-object v5, p0, Lghg;->R:Ljava/lang/Long;

    .line 10044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 629
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 631
    iget-object v5, p0, Lghg;->S:Ljava/lang/Integer;

    .line 11033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 631
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setEditorCount(I)V

    .line 632
    iget-object v5, p0, Lghg;->W:Ljava/lang/Integer;

    .line 12033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 632
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUnFinishEditorCount(I)V

    .line 633
    iget-object v5, p0, Lghg;->T:Ljava/lang/Boolean;

    .line 13022
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 633
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setWaitingForEdit(Z)V

    .line 634
    iget-object v5, p0, Lghg;->U:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 635
    iget-object v5, p0, Lghg;->V:Ljava/lang/Long;

    .line 13044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 635
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setMessageId(J)V

    .line 636
    iget-object v5, p0, Lghg;->X:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 639
    iget-object v5, p0, Lghg;->aa:Ljava/lang/Integer;

    .line 14033
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 639
    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setESafeNetEncrypt(Z)V

    .line 642
    iget-object v5, p0, Lghg;->Y:Ljava/lang/Boolean;

    .line 15022
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 642
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSoft(Z)V

    .line 643
    iget-object v5, p0, Lghg;->ac:Ljava/lang/Long;

    .line 15044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 643
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceId(Ljava/lang/String;)V

    .line 644
    iget-object v5, p0, Lghg;->ag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceType(Ljava/lang/String;)V

    .line 645
    iget-object v5, p0, Lghg;->ab:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceName(Ljava/lang/String;)V

    .line 646
    iget-object v5, p0, Lghg;->ad:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetDentryId(Ljava/lang/String;)V

    .line 647
    iget-object v5, p0, Lghg;->ae:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetDentryPath(Ljava/lang/String;)V

    .line 649
    iget-object v5, p0, Lghg;->af:Ljava/lang/Long;

    .line 16044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 649
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOrgId(J)V

    .line 653
    .end local v3    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :goto_9
    return-object v3

    .line 550
    .restart local v3    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_7
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 559
    :cond_8
    iget-object v5, p0, Lghg;->p:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    :cond_9
    const-string/jumbo v5, "folder"

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 579
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_a

    .line 581
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 583
    :cond_a
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 584
    .local v2, "indexParent":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 585
    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 591
    .end local v2    # "indexParent":I
    .end local v4    # "path":Ljava/lang/String;
    :cond_b
    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 595
    :cond_c
    const-wide/16 v6, 0x0

    goto/16 :goto_4

    .line 596
    :cond_d
    const-wide/16 v6, 0x0

    goto/16 :goto_5

    .line 604
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 615
    :cond_f
    iget-object v5, p0, Lghg;->y:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 639
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 653
    .end local v3    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_9
.end method

.method public static a(Lghi;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 4
    .param p0, "resultModel"    # Lghi;
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 533
    if-eqz p0, :cond_0

    iget-object v2, p0, Lghi;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lghi;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 534
    iget-object v2, p0, Lghi;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 535
    .local v0, "cspaceModel":Lghg;
    invoke-static {v0, p1}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 538
    .end local v0    # "cspaceModel":Lghg;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lggv;
    .locals 4
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "storeUrl"    # Ljava/lang/String;
    .param p5, "downloadUrl"    # Ljava/lang/String;
    .param p6, "notification"    # Z
    .param p7, "conflictType"    # I

    .prologue
    .line 309
    new-instance v0, Lggv;

    invoke-direct {v0}, Lggv;-><init>()V

    .line 1670
    .local v0, "addDentryParam":Lggv;
    new-instance v2, Lgha;

    invoke-direct {v2}, Lgha;-><init>()V

    .line 1671
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lgha;->a:Ljava/lang/Integer;

    .line 310
    iput-object v2, v0, Lggv;->a:Lgha;

    .line 312
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lggv;->b:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "0"

    .end local p1    # "folderId":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Lggv;->d:Ljava/lang/String;

    .line 319
    iput-object p2, v0, Lggv;->e:Ljava/lang/String;

    .line 323
    :goto_1
    iput-object p4, v0, Lggv;->f:Ljava/lang/String;

    .line 324
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lggv;->g:Ljava/lang/Integer;

    .line 325
    iput-object p5, v0, Lggv;->h:Ljava/lang/String;

    .line 326
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lggv;->i:Ljava/lang/Boolean;

    .line 327
    return-object v0

    .line 313
    .restart local p1    # "folderId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iput-object p3, v0, Lggv;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a()Lgha;
    .locals 2

    .prologue
    .line 661
    new-instance v0, Lgha;

    invoke-direct {v0}, Lgha;-><init>()V

    .line 662
    .local v0, "mHandler":Lgha;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lgha;->a:Ljava/lang/Integer;

    .line 663
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Z)Lghc;
    .locals 4
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p2, "physical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lghc;"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lghc;

    invoke-direct {v1}, Lghc;-><init>()V

    .line 355
    .local v1, "param":Lghc;
    iput-object p1, v1, Lghc;->b:Ljava/util/List;

    .line 356
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lghc;->c:Ljava/lang/Boolean;

    .line 358
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lghc;->a:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lghh;
    .locals 5
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "sortType"    # I
    .param p3, "loadMoreId"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 169
    new-instance v1, Lghh;

    invoke-direct {v1}, Lghh;-><init>()V

    .line 171
    .local v1, "queryParam":Lghh;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->f:Ljava/lang/Integer;

    .line 172
    if-ne p2, v3, :cond_2

    .line 173
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->c:Ljava/lang/Integer;

    .line 185
    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lghh;->d:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "0"

    .end local p1    # "folderId":Ljava/lang/String;
    :cond_0
    iput-object p1, v1, Lghh;->e:Ljava/lang/String;

    .line 190
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    iput-object p3, v1, Lghh;->a:Ljava/lang/String;

    .line 193
    :cond_1
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->b:Ljava/lang/Integer;

    .line 194
    return-object v1

    .line 174
    .restart local p1    # "folderId":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 176
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->f:Ljava/lang/Integer;

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 182
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lghh;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lghk;
    .locals 6
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "sortType"    # I
    .param p3, "loadMoreId"    # Ljava/lang/String;
    .param p4, "categoryType"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v2, Lghk;

    invoke-direct {v2}, Lghk;-><init>()V

    .line 207
    .local v2, "queryParam":Lghk;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 208
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lghk;->c:Ljava/lang/Integer;

    .line 213
    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lghk;->d:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p1, "0"

    .end local p1    # "folderId":Ljava/lang/String;
    :cond_0
    iput-object p1, v2, Lghk;->e:Ljava/lang/String;

    .line 218
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    iput-object p3, v2, Lghk;->a:Ljava/lang/String;

    .line 221
    :cond_1
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lghk;->b:Ljava/lang/Integer;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string/jumbo v3, "document"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    const-string/jumbo v3, "alidoc"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_2
    iput-object v0, v2, Lghk;->f:Ljava/util/List;

    .line 228
    return-object v2

    .line 210
    .end local v0    # "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "folderId":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lghk;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lghl;
    .locals 4
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v1, Lghl;

    invoke-direct {v1}, Lghl;-><init>()V

    .line 263
    .local v1, "queryParam":Lghl;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lghl;->a:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iput-object p1, v1, Lghl;->b:Ljava/lang/String;

    .line 268
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Z)Lgid;
    .locals 8
    .param p1, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lgid;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lgid;

    invoke-direct {v1}, Lgid;-><init>()V

    .line 239
    .local v1, "queryParam":Lgid;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lgid;->a:Ljava/lang/Boolean;

    .line 240
    if-eqz p0, :cond_1

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, "spaceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, "spaceId":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v2    # "spaceId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v3, v1, Lgid;->b:Ljava/util/List;

    .line 251
    .end local v3    # "spaceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lgik;
    .locals 7
    .param p1, "targetSpaceId"    # Ljava/lang/String;
    .param p2, "targetFolderId"    # Ljava/lang/String;
    .param p3, "targetFolderPath"    # Ljava/lang/String;
    .param p4, "isCut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lgik;"
        }
    .end annotation

    .prologue
    .local p0, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v4, 0x0

    .line 481
    new-instance v3, Lgik;

    invoke-direct {v3}, Lgik;-><init>()V

    .line 482
    .local v3, "param":Lgik;
    invoke-static {}, Lgoo;->a()Lgha;

    move-result-object v5

    iput-object v5, v3, Lgik;->a:Lgha;

    .line 483
    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lgik;->b:Ljava/lang/Integer;

    .line 484
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 524
    :cond_1
    return-object v3

    .line 487
    :cond_2
    iget-object v4, v3, Lgik;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 489
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 490
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v0}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 491
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lgik;->b:Ljava/lang/Integer;

    .line 496
    .end local v0    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 497
    const-string/jumbo v4, "0"

    iput-object v4, v3, Lgik;->f:Ljava/lang/String;

    .line 510
    :cond_5
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lgik;->c:Ljava/lang/Long;

    .line 511
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lgik;->e:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lgik;->d:Ljava/util/List;

    .line 516
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 517
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 518
    iget-object v5, v3, Lgik;->d:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 499
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 500
    iput-object p2, v3, Lgik;->f:Ljava/lang/String;

    goto :goto_0

    .line 501
    :cond_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 502
    const-string/jumbo v4, "/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 503
    const-string/jumbo v4, "0"

    iput-object v4, v3, Lgik;->f:Ljava/lang/String;

    goto :goto_0

    .line 505
    :cond_9
    iput-object p3, v3, Lgik;->g:Ljava/lang/String;

    goto :goto_0

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
