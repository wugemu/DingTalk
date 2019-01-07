.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/lang/String;)V
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
        "Ljava/lang/String;",
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
    .line 1615
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1618
    const-string/jumbo v0, "handleEditDraftAction.loadMailHtmlBodyFromServer"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1620
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iget-object v0, v0, Lagz;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1621
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iget-object v0, v0, Lagz;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v2

    iget-object v2, v2, Lagz;->i:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v2

    iget-object v2, v2, Lagz;->r:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lagz;->i:Ljava/lang/String;

    .line 1627
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lagz;)V

    .line 1631
    :goto_1
    return-void

    .line 1623
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iget-object v0, v0, Lagz;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v2

    iget-object v2, v2, Lagz;->h:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v2

    iget-object v2, v2, Lagz;->r:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lagz;->i:Ljava/lang/String;

    goto :goto_0

    .line 1629
    :cond_2
    const-string/jumbo v0, "loadEditDraftFromServer exception, for mDraftObj is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1615
    check-cast p1, Ljava/lang/String;

    .line 2635
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2639
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "loadMailHtmlBodyFromServer success: hasData:"

    aput-object v4, v3, v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2641
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2642
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v0

    iput-object p1, v0, Lagz;->i:Ljava/lang/String;

    .line 2644
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lagz;)V

    .line 1615
    :cond_3
    return-void
.end method
