.class final Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;
.super Ljava/lang/Object;
.source "MailSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 536
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "mail.networkSearch"

    invoke-static {v1, v2, v3}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1, v4}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Z)Z

    .line 543
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Laxo$i;->network_no_connection:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    sget v2, Laxo$i;->load_error_retry:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->o(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "MailSearch"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 485
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    .line 1489
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.networkSearch"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Z)Z

    .line 1496
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1497
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1498
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->m(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->total:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/util/Map;

    move-result-object v0

    .line 1977
    const-string/jumbo v1, "mail_search_server_noresult_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1504
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1508
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->n(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    :cond_2
    :goto_0
    return-void

    .line 1514
    :cond_3
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    .line 1516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;

    .line 1519
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lacv;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1522
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1524
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0}, Lacv;->b()Ljava/util/List;

    move-result-object v0

    .line 1525
    if-nez v0, :cond_6

    .line 1526
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lacv;->a(Ljava/util/List;)V

    .line 1530
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 1531
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->f(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;I)I

    goto :goto_0

    .line 1528
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0}, Lacv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method
