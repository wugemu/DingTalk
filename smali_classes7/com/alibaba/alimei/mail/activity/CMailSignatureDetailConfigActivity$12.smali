.class final Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;
.super Ljava/lang/Object;
.source "CMailSignatureDetailConfigActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->a:Z

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
    .line 337
    check-cast p1, Ljava/util/List;

    .line 1340
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    const-string/jumbo v0, "CMailSignatureDetail"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->dismissLoadingDialog()V

    .line 1345
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1346
    :cond_1
    const-string/jumbo v0, "CMailSignatureDetail"

    const-string/jumbo v1, "signatureDos.isEmpty()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/util/List;)Ljava/util/List;

    .line 1351
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

    .line 1352
    if-eqz v0, :cond_3

    .line 1356
    invoke-virtual {v0}, Laca;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1357
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Laca;)Laca;

    .line 1358
    invoke-virtual {v0}, Laca;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1359
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Laca;)Laca;

    goto :goto_1

    .line 1363
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->a:Z

    if-eqz v0, :cond_5

    .line 1364
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    goto :goto_0

    .line 1366
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 376
    const-string/jumbo v0, "CMailSignatureDetail"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "CMailSignatureDetail"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->dismissLoadingDialog()V

    .line 382
    invoke-static {p2}, Lhcn;->a(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$12;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 372
    return-void
.end method
