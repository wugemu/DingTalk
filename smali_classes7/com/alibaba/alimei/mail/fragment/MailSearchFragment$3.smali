.class final Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;
.super Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;
.source "MailSearchFragment.java"


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
        "Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 406
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.localSearch"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Z)Z

    .line 412
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->m(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 331
    check-cast p1, Ljava/util/Map;

    .line 1335
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "mail.localSearch"

    invoke-static {v0, v2, v3}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 1345
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1346
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1347
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1351
    :goto_0
    if-eqz v2, :cond_4

    .line 1352
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1356
    :goto_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->l(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1360
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    move-result-object v0

    invoke-static {v0, v5}, Lss;->a(Landroid/view/View;Z)V

    .line 1363
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/util/Map;

    move-result-object v0

    .line 1973
    const-string/jumbo v2, "mail_search_local_noresult_click"

    invoke-static {v2, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1364
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->b:I

    if-ne v0, v4, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Ljava/util/List;)V

    .line 1398
    :cond_1
    :goto_2
    return-void

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->h(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .line 2118
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    .line 1369
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;)V

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryFrequentContacts(Ljava/lang/String;IZLxv;)V

    goto :goto_2

    .line 1401
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method
