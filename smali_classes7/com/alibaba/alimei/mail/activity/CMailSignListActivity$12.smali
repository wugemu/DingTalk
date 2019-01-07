.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h()V
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
        "Ljava/util/List",
        "<",
        "Laca;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 349
    check-cast p1, Ljava/util/List;

    .line 1352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1355
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1356
    :cond_0
    const-string/jumbo v0, "CMailSignListActivity"

    const-string/jumbo v1, "models.isEmpty()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_1
    :goto_0
    return-void

    .line 1360
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g()V

    .line 1361
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1363
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 1364
    if-eqz v0, :cond_3

    .line 1365
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1371
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string/jumbo v0, "CMailSignListActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g()V

    .line 386
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 377
    return-void
.end method
