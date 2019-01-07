.class public Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "TagDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/datasource/TagDatasource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TagDatasourceImpl"

.field private static final TAG_ID_NOT_IN_LOCAL:Ljava/lang/String; = "tag_id NOT IN(\'1\', \'2\', \'unread\')"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private static addDefaultTag(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "accountId"    # J
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "tagId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 519
    new-instance v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;-><init>()V

    .line 520
    .local v2, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    iput-wide p0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mAccountKey:J

    .line 521
    iput v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mColor:I

    .line 522
    iput-object p2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mDisplayName:Ljava/lang/String;

    .line 523
    iput-object p3, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    .line 524
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->save()J

    move-result-wide v0

    .line 525
    .local v0, "result":J
    const-string/jumbo v3, "TagDatasourceImpl"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "addDefaultTag for accountId: "

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 526
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", name: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, ", result: "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 528
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 525
    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method static buildTagModel(JLcom/alibaba/alimei/restfulapi/data/TagItem;)Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .locals 4
    .param p0, "accountId"    # J
    .param p2, "item"    # Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .prologue
    const/4 v2, 0x0

    .line 746
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;-><init>()V

    .line 747
    .local v0, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    .line 748
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 749
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getMailTotal()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mCount:I

    .line 750
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getMailUnread()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mUnreadCount:I

    .line 751
    iput-wide p0, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mAccountKey:J

    .line 752
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHasMoreMail:Z

    .line 753
    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mSystemTag:Z

    .line 754
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestSerId:Ljava/lang/String;

    .line 755
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laje;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    .line 756
    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHidden:Z

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    .line 760
    return-object v0
.end method

.method static buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .locals 4
    .param p0, "tag"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .prologue
    .line 725
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;-><init>()V

    .line 726
    .local v0, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mId:J

    .line 727
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    .line 728
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 729
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mAccountKey:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mAccountKey:J

    .line 730
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mColor:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    .line 731
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mHidden:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHidden:Z

    .line 732
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mCount:I

    .line 733
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mUnreadCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mUnreadCount:I

    .line 734
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mSystemTag:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mSystemTag:Z

    .line 735
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTimeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    .line 736
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mOldestSerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestSerId:Ljava/lang/String;

    .line 737
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mHasMoreMail:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHasMoreMail:Z

    .line 738
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mOldestTimeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestTimeStamp:J

    .line 739
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mLastSyncTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mLastSyncTime:J

    .line 740
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mCareOrder:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mCareOrder:J

    .line 741
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mLastVisitTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mLastVisitTime:J

    .line 742
    return-object v0
.end method

.method private handleAddOrUpdateTag(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLcom/alibaba/alimei/restfulapi/data/TagItem;)V
    .locals 10
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .param p2, "accountId"    # J
    .param p4, "item"    # Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .prologue
    .line 623
    if-nez p4, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tags"

    invoke-direct {v2, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getAddedTags()Ljava/util/List;

    move-result-object v0

    .line 630
    .local v0, "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    if-nez v0, :cond_2

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .restart local v0    # "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setAddedTags(Ljava/util/List;)V

    .line 635
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getChangedTags()Ljava/util/List;

    move-result-object v5

    .line 636
    .local v5, "updatedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    if-nez v5, :cond_3

    .line 637
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "updatedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .restart local v5    # "updatedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p1, v5}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setChangedTags(Ljava/util/List;)V

    .line 641
    :cond_3
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getId()Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "tagId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 643
    const-string/jumbo v6, "tag_id"

    invoke-virtual {v2, v6, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v6, "account_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 646
    .local v3, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    const/4 v1, 0x1

    .line 647
    .local v1, "insert":Z
    if-nez v3, :cond_4

    .line 648
    invoke-direct {p0, p4, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->insertTag(Lcom/alibaba/alimei/restfulapi/data/TagItem;J)J

    .line 654
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    .end local v3    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 655
    .restart local v3    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-eqz v1, :cond_5

    .line 656
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    invoke-static {v6}, Laiv;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 659
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 650
    :cond_4
    const/4 v1, 0x0

    .line 651
    invoke-direct {p0, p4, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->updateTag(Lcom/alibaba/alimei/restfulapi/data/TagItem;Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)I

    goto :goto_1

    .line 661
    :cond_5
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    invoke-static {v6}, Laiv;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 664
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleAddOrUpdateTags(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLjava/util/List;)V
    .locals 10
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/TagGroupModel;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/TagItem;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tags"

    invoke-direct {v3, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "addedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getChangedTags()Ljava/util/List;

    move-result-object v6

    .line 582
    .local v6, "updatedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    if-nez v6, :cond_2

    .line 583
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "updatedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .restart local v6    # "updatedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .line 586
    .local v2, "item":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "tagId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 588
    const-string/jumbo v8, "tag_id"

    invoke-virtual {v3, v8, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string/jumbo v8, "account_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 591
    .local v4, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    const/4 v1, 0x1

    .line 592
    .local v1, "insert":Z
    if-nez v4, :cond_4

    .line 593
    invoke-direct {p0, v2, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->insertTag(Lcom/alibaba/alimei/restfulapi/data/TagItem;J)J

    .line 599
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    .end local v4    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 600
    .restart local v4    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-eqz v1, :cond_5

    .line 601
    iget-object v8, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    invoke-static {v8}, Laiv;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 604
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    :cond_4
    const/4 v1, 0x0

    .line 596
    invoke-direct {p0, v2, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->updateTag(Lcom/alibaba/alimei/restfulapi/data/TagItem;Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)I

    goto :goto_2

    .line 606
    :cond_5
    iget-object v8, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    invoke-static {v8}, Laiv;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 609
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    .end local v1    # "insert":Z
    .end local v2    # "item":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    .end local v4    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    .end local v5    # "tagId":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 614
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setAddedTags(Ljava/util/List;)V

    .line 617
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 618
    invoke-virtual {p1, v6}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setChangedTags(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private handleDeleteTag(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLcom/alibaba/alimei/restfulapi/data/TagItem;)V
    .locals 10
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .param p2, "accountId"    # J
    .param p4, "item"    # Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .prologue
    .line 675
    if-nez p4, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tags"

    invoke-direct {v1, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tags"

    invoke-direct {v3, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getDeletedTags()Ljava/util/List;

    move-result-object v2

    .line 681
    .local v2, "deleteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    if-nez v2, :cond_2

    .line 682
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "deleteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .restart local v2    # "deleteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setDeletedTags(Ljava/util/List;)V

    .line 685
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 686
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 687
    .local v5, "tagId":Ljava/lang/String;
    const-string/jumbo v6, "tag_id"

    invoke-virtual {v1, v6, v5}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string/jumbo v6, "account_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 690
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 691
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 692
    const-string/jumbo v6, "tag_id"

    invoke-virtual {v3, v6, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string/jumbo v6, "account_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 695
    .local v4, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-eqz v4, :cond_0

    .line 696
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleDeleteTags(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLjava/util/List;)V
    .locals 12
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/TagGroupModel;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/TagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p4, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/TagItem;>;"
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "tags"

    invoke-direct {v1, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "tags"

    invoke-direct {v6, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v3, "deleteMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .line 546
    .local v4, "item":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 547
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getId()Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "tagId":Ljava/lang/String;
    const-string/jumbo v10, "tag_id"

    invoke-virtual {v1, v10, v8}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string/jumbo v10, "account_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 551
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 552
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 553
    const-string/jumbo v10, "tag_id"

    invoke-virtual {v6, v10, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string/jumbo v10, "account_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 556
    .local v7, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-eqz v7, :cond_2

    .line 557
    invoke-static {v7}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 562
    .end local v0    # "count":I
    .end local v4    # "item":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    .end local v7    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    .end local v8    # "tagId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v2, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 565
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 566
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 569
    :cond_4
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setDeletedTags(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private insertTag(Lcom/alibaba/alimei/restfulapi/data/TagItem;J)J
    .locals 2
    .param p1, "item"    # Lcom/alibaba/alimei/restfulapi/data/TagItem;
    .param p2, "accountId"    # J

    .prologue
    .line 702
    invoke-static {p2, p3, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(JLcom/alibaba/alimei/restfulapi/data/TagItem;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->saveTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final isDefaultTagExist(JLjava/lang/String;)Z
    .locals 6
    .param p0, "accountId"    # J
    .param p2, "tagId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 491
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "account_key=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string/jumbo v1, "tag_id=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v1

    return v1
.end method

.method private updateTag(Lcom/alibaba/alimei/restfulapi/data/TagItem;Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)I
    .locals 6
    .param p1, "item"    # Lcom/alibaba/alimei/restfulapi/data/TagItem;
    .param p2, "tag"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 706
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tags"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const/4 v0, 0x0

    .line 708
    .local v0, "hasUpdate":Z
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 710
    const-string/jumbo v2, "color"

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laje;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    :cond_0
    iget-object v2, p1, Lcom/alibaba/alimei/restfulapi/data/TagItem;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    const/4 v0, 0x1

    .line 714
    const-string/jumbo v2, "displayName"

    iget-object v3, p1, Lcom/alibaba/alimei/restfulapi/data/TagItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    :cond_1
    const-string/jumbo v2, "account_key"

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string/jumbo v2, "tag_id"

    iget-object v3, p2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v2

    .line 721
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDefaultTagForAccount(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 388
    const-string/jumbo v0, "TagDatasourceImpl"

    const-string/jumbo v1, "addDefaultTagForAccount"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v0, "1"

    invoke-static {p1, p2, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->isDefaultTagExist(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-string/jumbo v0, "Follows"

    const-string/jumbo v1, "1"

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->addDefaultTag(JLjava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    const-string/jumbo v0, "2"

    invoke-static {p1, p2, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->isDefaultTagExist(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    const-string/jumbo v0, "Complete"

    const-string/jumbo v1, "2"

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->addDefaultTag(JLjava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_1
    const-string/jumbo v0, "unread"

    invoke-static {p1, p2, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->isDefaultTagExist(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    const-string/jumbo v0, "Unread"

    const-string/jumbo v1, "unread"

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->addDefaultTag(JLjava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_2
    return-void
.end method

.method public containsTag(JLjava/lang/String;)Z
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "tag_id"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v1

    goto :goto_0
.end method

.method public deleteAllTagsExceptLocal(J)Ljava/util/List;
    .locals 13
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 197
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-gtz v7, :cond_0

    .line 223
    :goto_0
    return-object v5

    .line 201
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tags"

    invoke-direct {v2, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v7, "tag_id NOT IN(\'1\', \'2\', \'unread\')"

    invoke-virtual {v2, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 205
    .local v6, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    :cond_1
    const-string/jumbo v7, "TagDatasourceImpl"

    const-string/jumbo v8, "deleteAllTagsExceptLocal fail for tags store in server is null"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_2
    const-string/jumbo v7, "TagDatasourceImpl"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "deleteAllTagsExceptLocal tags count: "

    aput-object v9, v8, v10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v5, "tagModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 213
    .local v3, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v4

    .line 214
    .local v4, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    .end local v3    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    .end local v4    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_3
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tags"

    invoke-direct {v1, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v7, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v7, "tag_id NOT IN(\'1\', \'2\', \'unread\')"

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 221
    .local v0, "count":I
    const-string/jumbo v7, "TagDatasourceImpl"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "deleteAllTags count: "

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "EmailProvider.db"

    return-object v0
.end method

.method public handleAddTagResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;)Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    .prologue
    .line 273
    if-eqz p5, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 274
    :cond_0
    const-string/jumbo v8, "TagDatasourceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "handleAddTagResult error for result: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v6, 0x0

    .line 323
    :cond_1
    :goto_0
    return-object v6

    .line 278
    :cond_2
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-direct {v4, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "displayName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "_id"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "color"

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 280
    const-string/jumbo v8, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v8, "displayName"

    move-object/from16 v0, p4

    invoke-virtual {v4, v8, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v2, 0x1

    .line 284
    .local v2, "insert":Z
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 285
    const/4 v2, 0x0

    .line 286
    new-instance v7, Lcom/alibaba/alimei/orm/query/Update;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-direct {v7, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v7, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v8, "tag_id"

    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;->getColor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 289
    const-string/jumbo v8, "color"

    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;->getColor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    :cond_3
    const-string/jumbo v8, "system_tag"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string/jumbo v8, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v8, "displayName"

    move-object/from16 v0, p4

    invoke-virtual {v7, v8, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 305
    .end local v7    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_1
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-direct {v3, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v3, "newSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v8, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v8, "displayName"

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 310
    .local v5, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    const/4 v6, 0x0

    .line 311
    .local v6, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    if-eqz v5, :cond_1

    .line 312
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v6

    .line 313
    new-instance v1, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    move-object/from16 v0, p3

    invoke-direct {v1, p1, p2, v0}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;-><init>(JLjava/lang/String;)V

    .line 314
    .local v1, "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    if-eqz v2, :cond_5

    .line 315
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/alibaba/alimei/sdk/model/MailTagModel;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setAddedTags(Ljava/util/List;)V

    .line 320
    :goto_2
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V

    goto/16 :goto_0

    .line 296
    .end local v1    # "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .end local v3    # "newSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v5    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    .end local v6    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_4
    new-instance v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;-><init>()V

    .line 297
    .restart local v5    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;->getId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    .line 298
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;->getColor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laje;->a(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mColor:I

    .line 299
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mSystemTag:Z

    .line 300
    iput-wide p1, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mAccountKey:J

    .line 301
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mDisplayName:Ljava/lang/String;

    .line 302
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->save()J

    goto :goto_1

    .line 317
    .restart local v1    # "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .restart local v3    # "newSelect":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v6    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_5
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/alibaba/alimei/sdk/model/MailTagModel;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setChangedTags(Ljava/util/List;)V

    goto :goto_2
.end method

.method public handleCareOrdersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;)V
    .locals 23
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;

    .prologue
    .line 404
    new-instance v13, Lcom/alibaba/alimei/orm/query/Select;

    const-class v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "tags"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v13, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v19, "tag_id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v19, "account_key"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v19, "careOrder>0"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v10

    .line 409
    .local v10, "oldCareTagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_0
    if-eqz p4, :cond_1

    .line 410
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 411
    :cond_1
    const-string/jumbo v19, "TagDatasourceImpl"

    const-string/jumbo v20, "old care order is null, return careOrder is null, do nothing!!!!"

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    :goto_0
    return-void

    .line 416
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->addDefaultTagForAccount(J)V

    .line 418
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v4, "changedTagIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    .line 420
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 421
    .local v15, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-eqz v15, :cond_4

    .line 425
    iget-object v0, v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    .end local v15    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    :cond_5
    new-instance v18, Lcom/alibaba/alimei/orm/query/Update;

    const-class v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "tags"

    invoke-direct/range {v18 .. v21}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .local v18, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v19, "careOrder"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    const-string/jumbo v19, "account_key"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v6

    .line 433
    .local v6, "count":I
    const-string/jumbo v19, "TagDatasourceImpl"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "update count: "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;->getCareOrderList()Ljava/util/List;

    move-result-object v12

    .line 436
    .local v12, "orderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    .line 437
    .local v14, "size":I
    const/4 v11, 0x0

    .line 438
    .local v11, "order":I
    const/16 v16, 0x0

    .line 439
    .local v16, "tagId":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v14, :cond_9

    .line 440
    add-int/lit8 v11, v11, 0x1

    .line 441
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;

    .line 443
    .local v3, "careItem":Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->isFolder()Z

    move-result v19

    if-nez v19, :cond_6

    .line 446
    const/4 v9, 0x1

    .line 447
    .local v9, "needUpdate":Z
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 448
    const-string/jumbo v19, "careOrder"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string/jumbo v19, "account_key"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->isTag()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 452
    iget-object v0, v3, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->objectId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 459
    :goto_3
    if-eqz v9, :cond_6

    .line 460
    const-string/jumbo v19, "tag_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 439
    .end local v9    # "needUpdate":Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 453
    .restart local v9    # "needUpdate":Z
    :cond_7
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->isUnread()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 454
    const-string/jumbo v16, "unread"

    goto :goto_3

    .line 456
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 466
    .end local v3    # "careItem":Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;
    .end local v9    # "needUpdate":Z
    :cond_9
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    .line 467
    const-string/jumbo v19, "account_key"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v19, "tag_id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v4}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 469
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v17

    .line 470
    .local v17, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;>;"
    if-eqz v17, :cond_2

    .line 474
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    .local v5, "changedTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 476
    .restart local v15    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    invoke-static {v15}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 479
    .end local v15    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    :cond_a
    new-instance v7, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v2}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;-><init>(JLjava/lang/String;)V

    .line 480
    .local v7, "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    invoke-virtual {v7, v5}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setChangedTags(Ljava/util/List;)V

    .line 481
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V

    goto/16 :goto_0
.end method

.method public handleDeleteTagResult(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "tagId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 360
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-direct {v3, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v8, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v8, "tag_id"

    invoke-virtual {v3, v8, p4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 365
    .local v4, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-nez v4, :cond_0

    .line 366
    const-string/jumbo v8, "TagDatasourceImpl"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "tag with id:"

    aput-object v10, v9, v6

    aput-object p4, v9, v7

    const/4 v7, 0x2

    const-string/jumbo v10, " not exist"

    aput-object v10, v9, v7

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return v6

    .line 370
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tags"

    invoke-direct {v1, v6, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v6, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v6, "tag_id"

    invoke-virtual {v1, v6, p4}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 375
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 376
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v5

    .line 378
    .local v5, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    new-instance v2, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    invoke-direct {v2, p1, p2, p3}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;-><init>(JLjava/lang/String;)V

    .line 379
    .local v2, "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->addDeleteTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    .line 380
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V

    .end local v2    # "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .end local v5    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_1
    move v6, v7

    .line 383
    goto :goto_0
.end method

.method public handleSyncResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;

    .prologue
    .line 141
    if-nez p4, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->getCount()I

    move-result v5

    .line 146
    .local v5, "totalSize":I
    if-gtz v5, :cond_2

    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->isForceFullSync()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;-><init>(JLjava/lang/String;)V

    .line 152
    .local v1, "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->isForceFullSync()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->deleteAllTagsExceptLocal(J)Ljava/util/List;

    move-result-object v4

    .line 154
    .local v4, "tagModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 155
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setDeletedTags(Ljava/util/List;)V

    .line 159
    .end local v4    # "tagModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    :cond_3
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->getTagList()Ljava/util/List;

    move-result-object v2

    .line 160
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/TagItem;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/data/TagItem;

    .line 162
    .local v3, "tagItem":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    if-eqz v3, :cond_4

    .line 165
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/TagItem;->getAction()I

    move-result v0

    .line 166
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 168
    :pswitch_0
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->handleAddOrUpdateTag(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLcom/alibaba/alimei/restfulapi/data/TagItem;)V

    goto :goto_1

    .line 171
    :pswitch_1
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->handleDeleteTag(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLcom/alibaba/alimei/restfulapi/data/TagItem;)V

    goto :goto_1

    .line 174
    :pswitch_2
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->handleAddOrUpdateTag(Lcom/alibaba/alimei/sdk/model/TagGroupModel;JLcom/alibaba/alimei/restfulapi/data/TagItem;)V

    goto :goto_1

    .line 189
    .end local v0    # "action":I
    .end local v3    # "tagItem":Lcom/alibaba/alimei/restfulapi/data/TagItem;
    :cond_5
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v6

    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;->getSyncKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->updateTagSyncKey(JLjava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUpdateTagResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "tagId"    # Ljava/lang/String;
    .param p5, "tagName"    # Ljava/lang/String;
    .param p6, "color"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tags"

    invoke-direct {v3, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v7, "tag_id"

    move-object/from16 v0, p4

    invoke-virtual {v3, v7, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 333
    .local v4, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-nez v4, :cond_0

    .line 334
    const-string/jumbo v7, "TagDatasourceImpl"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "tag with id:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p4, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", tagName: "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", color: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    aput-object p6, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v10, " not exist"

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v7, 0x0

    .line 355
    :goto_0
    return v7

    .line 338
    :cond_0
    new-instance v6, Lcom/alibaba/alimei/orm/query/Update;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tags"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v6, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v7, "displayName"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    const-string/jumbo v7, "color"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    const-string/jumbo v7, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v7, "tag_id"

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 345
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 346
    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mDisplayName:Ljava/lang/String;

    .line 347
    invoke-static/range {p6 .. p6}, Laje;->a(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mColor:I

    .line 348
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v5

    .line 350
    .local v5, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    new-instance v2, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    move-object/from16 v0, p3

    invoke-direct {v2, p1, p2, v0}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;-><init>(JLjava/lang/String;)V

    .line 351
    .local v2, "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->addChangedTags(Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    .line 352
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V

    .line 355
    .end local v2    # "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    .end local v5    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public queryLocalTag(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "tagId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v2

    .line 109
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tags"

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v3, "tag_id"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 113
    .local v1, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    if-eqz v1, :cond_0

    .line 114
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v2

    goto :goto_0
.end method

.method public queryLocalTags(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tags"

    invoke-direct {v1, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 91
    .local v4, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;>;"
    if-nez v4, :cond_1

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    :cond_0
    return-object v3

    .line 94
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v3, "tagModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 96
    .local v2, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    invoke-static {v6}, Laiv;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v0

    .line 98
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public saveTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)J
    .locals 4
    .param p1, "tagModel"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-wide/16 v2, -0x1

    .line 83
    :goto_0
    return-wide v2

    .line 71
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;-><init>()V

    .line 72
    .local v0, "Tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mAccountKey:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mAccountKey:J

    .line 73
    iget-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mSystemTag:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mSystemTag:Z

    .line 74
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mCount:I

    .line 75
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mDisplayName:Ljava/lang/String;

    .line 76
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mColor:I

    .line 77
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTagId:Ljava/lang/String;

    .line 78
    iget-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHidden:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mHidden:Z

    .line 79
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mTimeStamp:J

    .line 80
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestSerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mOldestSerId:Ljava/lang/String;

    .line 81
    iget-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHasMoreMail:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mHasMoreMail:Z

    .line 82
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestTimeStamp:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->mOldestTimeStamp:J

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;->save()J

    move-result-wide v2

    goto :goto_0
.end method

.method public updateHistoryStatus(JLjava/lang/String;Ljava/lang/String;JZ)I
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "tagId"    # Ljava/lang/String;
    .param p5, "timeStamp"    # J
    .param p7, "hasMore"    # Z

    .prologue
    .line 228
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 229
    const/4 v1, 0x0

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    new-instance v7, Lcom/alibaba/alimei/orm/query/Update;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-direct {v7, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v7, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v8, "oldest_time_stamp"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string/jumbo v8, "has_more_mail"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string/jumbo v8, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v8, "tag_id"

    invoke-virtual {v7, v8, p4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 237
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 238
    new-instance v2, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    invoke-direct {v2, p1, p2, p3}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;-><init>(JLjava/lang/String;)V

    .line 239
    .local v2, "groupModel":Lcom/alibaba/alimei/sdk/model/TagGroupModel;
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-direct {v4, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v8, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v8, "tag_id"

    invoke-virtual {v4, v8, p4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 243
    .local v6, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v0, "changedModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    .line 249
    .local v5, "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->buildTagModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v3

    .line 250
    .local v3, "model":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    .end local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .end local v5    # "tag":Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;
    :cond_2
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->setChangedTags(Ljava/util/List;)V

    .line 253
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V

    goto/16 :goto_0
.end method

.method public updateLastVisitTime(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "tagId"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "last_visit_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string/jumbo v1, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string/jumbo v1, "tag_id"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 509
    const-string/jumbo v1, "TagDatasourceImpl"

    const-string/jumbo v2, "updateTagLastVisitTime"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method public updateLocalTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)I
    .locals 4
    .param p1, "tagModel"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v1, -0x1

    .line 136
    :goto_0
    return v1

    .line 125
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "displayName"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v1, "tag_id"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string/jumbo v1, "account_key"

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v1, "color"

    iget v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v1, "hidden"

    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v1, "system_tag"

    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mSystemTag:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string/jumbo v1, "oldest_server_id"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mOldestSerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v1, "time_stamp"

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v1, "has_more_mail"

    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mHasMoreMail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v1, "_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    goto/16 :goto_0
.end method

.method public updateSyncTime(JLjava/lang/String;J)V
    .locals 4
    .param p1, "accountId"    # J
    .param p3, "tagId"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J

    .prologue
    .line 260
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "last_sync_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string/jumbo v1, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "tag_id"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_0
.end method
