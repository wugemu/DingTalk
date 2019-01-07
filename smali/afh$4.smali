.class final Lafh$4;
.super Ljava/lang/Object;
.source "MailUtils.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh;->a(Ljava/lang/String;ZLxv;)V
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
.field final synthetic a:Lxv;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/HashSet;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxv;ZLjava/util/HashSet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1435
    iput-object p1, p0, Lafh$4;->a:Lxv;

    iput-boolean p2, p0, Lafh$4;->b:Z

    iput-object p3, p0, Lafh$4;->c:Ljava/util/HashSet;

    iput-object p4, p0, Lafh$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1480
    const-string/jumbo v0, "MailUtils.getAliasMails"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1482
    iget-object v0, p0, Lafh$4;->a:Lxv;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lafh$4;->a:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1485
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1435
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 2438
    if-nez p1, :cond_2

    .line 2439
    iget-object v0, p0, Lafh$4;->a:Lxv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lafh$4;->b:Z

    if-nez v0, :cond_0

    .line 2440
    iget-object v0, p0, Lafh$4;->a:Lxv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lafh$4;->c:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 2442
    :cond_0
    const-string/jumbo v0, "MailUtils"

    const-string/jumbo v1, "getAliasMails from local success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Lafh$4;->d:Ljava/lang/String;

    iget-object v1, p0, Lafh$4;->c:Ljava/util/HashSet;

    iget-object v2, p0, Lafh$4;->a:Lxv;

    invoke-static {v0, v1, v2}, Lafh;->a(Ljava/lang/String;Ljava/util/Set;Lxv;)V

    .line 2470
    :cond_1
    :goto_0
    return-void

    .line 2447
    :cond_2
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2448
    iget-object v0, p0, Lafh$4;->c:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2452
    :cond_3
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    .line 2453
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    .line 2455
    iget-object v2, p0, Lafh$4;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2460
    :cond_4
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    .line 2461
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2462
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    .line 2463
    iget-object v2, p0, Lafh$4;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2467
    :cond_5
    const-string/jumbo v0, "MailUtils"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getAliasMails from local: aliasMails: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lafh$4;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    sget-object v0, Lafh;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lafh$4;->b:Z

    if-eqz v0, :cond_6

    .line 2470
    iget-object v0, p0, Lafh$4;->d:Ljava/lang/String;

    iget-object v1, p0, Lafh$4;->c:Ljava/util/HashSet;

    iget-object v2, p0, Lafh$4;->a:Lxv;

    invoke-static {v0, v1, v2}, Lafh;->a(Ljava/lang/String;Ljava/util/Set;Lxv;)V

    goto/16 :goto_0

    .line 2472
    :cond_6
    iget-object v0, p0, Lafh$4;->a:Lxv;

    if-eqz v0, :cond_1

    .line 2473
    iget-object v0, p0, Lafh$4;->a:Lxv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lafh$4;->c:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
