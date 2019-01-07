.class final Lafh$5;
.super Ljava/lang/Object;
.source "MailUtils.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lxv;


# direct methods
.method constructor <init>(Ljava/util/Set;Lxv;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lafh$5;->a:Ljava/util/Set;

    iput-object p2, p0, Lafh$5;->b:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1550
    const-string/jumbo v0, "MailUtils.getAliasMailsFromServer"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1551
    iget-object v0, p0, Lafh$5;->b:Lxv;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lafh$5;->b:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1554
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1502
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 2505
    if-nez p1, :cond_1

    .line 2506
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2507
    const-string/jumbo v1, "getAliasMailFromServer from server fail: aliasMails: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2508
    iget-object v1, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2509
    const-string/jumbo v1, "MailUtils"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v0, p0, Lafh$5;->b:Lxv;

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p0, Lafh$5;->b:Lxv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 2513
    :cond_0
    :goto_0
    return-void

    .line 2516
    :cond_1
    iget-object v0, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2518
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2519
    iget-object v0, p0, Lafh$5;->a:Ljava/util/Set;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2523
    :cond_2
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    .line 2524
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    .line 2526
    iget-object v2, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2531
    :cond_3
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    .line 2532
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2533
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    .line 2534
    iget-object v2, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2538
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2539
    const-string/jumbo v1, "getAliasMailFromServer from server fail: aliasMails: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2540
    iget-object v1, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2541
    const-string/jumbo v1, "MailUtils"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    iget-object v0, p0, Lafh$5;->b:Lxv;

    if-eqz v0, :cond_0

    .line 2544
    iget-object v0, p0, Lafh$5;->b:Lxv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lafh$5;->a:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
