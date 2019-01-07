.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;
.super Ljava/lang/Object;
.source "CSpaceGroupFolderFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 605
    check-cast p1, Lgie;

    .line 1608
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgie;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lgie;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1609
    :cond_0
    const-string/jumbo v0, "500"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    sget v2, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_1
    :goto_0
    return-void

    .line 1612
    :cond_2
    iget-object v0, p1, Lgie;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgic;

    .line 1614
    iget-object v1, v0, Lgic;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1614
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iget-object v2, v0, Lgic;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1618
    invoke-static {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;J)J

    .line 1619
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iget-object v2, v0, Lgic;->d:Ljava/lang/Long;

    .line 4044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1619
    invoke-static {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;J)J

    .line 1620
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lgpr;->a(JLgic;)V

    .line 1622
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$8;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Landroid/view/View;Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 633
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceGroupFolderFragment"

    const-string/jumbo v2, "getPublicAreaInfo: listSpaces"

    const/4 v3, 0x0

    .line 634
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 628
    return-void
.end method
