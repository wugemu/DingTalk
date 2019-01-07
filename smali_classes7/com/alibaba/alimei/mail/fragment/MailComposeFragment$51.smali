.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
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
        "Lagz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1593
    const-string/jumbo v0, "handleEditDraftAction.queryMailDetail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1594
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1560
    check-cast p1, Lagz;

    .line 2563
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2566
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lagz;)Lagz;

    .line 2567
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    .line 2569
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2570
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    iget-object v1, v1, Lagz;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2571
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    iget-object v1, v1, Lagz;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2572
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iget-object v0, v0, Lagz;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iget-object v0, v0, Lagz;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iget-object v0, v0, Lagz;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2574
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "MessageCompose load draft--->, has no body, so loadDraft from server"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    iget-object v1, v1, Lagz;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    .line 2585
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    :cond_0
    :goto_1
    return-void

    .line 2577
    :cond_1
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "MessageCompose load draft--->, has body, still from server"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    iget-object v1, v1, Lagz;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    .line 2579
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lagz;)V

    .line 2580
    const-string/jumbo v0, "MailComposeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MessageCompose load draft--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2587
    :cond_2
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "load draft fail for draft mail is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
