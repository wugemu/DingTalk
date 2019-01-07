.class final Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;
.super Ljava/lang/Object;
.source "ContactDetailSearchFragment.java"

# interfaces
.implements Lcmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmb",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 633
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 565
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1569
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    if-nez v0, :cond_7

    .line 1579
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;I)I

    .line 1580
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    .line 1581
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1582
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->n:Z

    .line 1588
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 1590
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-nez v0, :cond_8

    :cond_3
    move v1, v2

    .line 1591
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 2128
    iget v3, v3, Leoe;->e:I

    .line 1591
    add-int/2addr v3, v1

    .line 2132
    iput v3, v0, Leoe;->e:I

    .line 1592
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    sget-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3, v4, v1, v0}, Leoe;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-boolean v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->r:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_a

    .line 1595
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->r:I

    .line 1596
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v6, v1, Leoe;->g:J

    .line 1596
    sub-long/2addr v4, v6

    .line 3112
    iput-wide v4, v0, Leoe;->c:J

    .line 1597
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 1598
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-virtual {v0}, Leoe;->a()V

    .line 1599
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 1600
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Z)Z

    goto/16 :goto_0

    .line 1584
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    .line 1585
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->nextCursor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1606
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Z)Z

    throw v0

    .line 1590
    :cond_8
    :try_start_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_2

    .line 1592
    :cond_9
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    goto :goto_3

    .line 1603
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 618
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 623
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->c()V

    .line 625
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bd

    .line 626
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 627
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;->b:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Z)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 613
    return-void
.end method
