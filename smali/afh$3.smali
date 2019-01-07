.class final Lafh$3;
.super Ljava/lang/Object;
.source "MailUtils.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh;->a(Ljava/lang/String;Lxv;)V
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

.field final synthetic b:Ljava/util/HashSet;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxv;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lafh$3;->a:Lxv;

    iput-object p2, p0, Lafh$3;->b:Ljava/util/HashSet;

    iput-object p3, p0, Lafh$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1386
    const-string/jumbo v0, "MailUtils.getAliasMails"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1387
    iget-object v0, p0, Lafh$3;->a:Lxv;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lafh$3;->a:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1390
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1358
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 2361
    if-nez p1, :cond_2

    .line 2362
    iget-object v0, p0, Lafh$3;->a:Lxv;

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lafh$3;->a:Lxv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lafh$3;->b:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 2365
    :cond_0
    const-string/jumbo v0, "MailUtils"

    const-string/jumbo v1, "getAliasMails from local success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lafh$3;->c:Ljava/lang/String;

    iget-object v1, p0, Lafh$3;->b:Ljava/util/HashSet;

    iget-object v2, p0, Lafh$3;->a:Lxv;

    invoke-static {v0, v1, v2}, Lafh;->a(Ljava/lang/String;Ljava/util/Set;Lxv;)V

    .line 2367
    :cond_1
    :goto_0
    return-void

    .line 2370
    :cond_2
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->serverId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->serverId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2371
    iget-object v0, p0, Lafh$3;->b:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2374
    :cond_3
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2375
    iget-object v0, p0, Lafh$3;->b:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2378
    :cond_4
    const-string/jumbo v0, "MailUtils"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getAliasMails from local: allAccountNames: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lafh$3;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lafh$3;->a:Lxv;

    if-eqz v0, :cond_1

    .line 2380
    iget-object v0, p0, Lafh$3;->a:Lxv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lafh$3;->b:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
