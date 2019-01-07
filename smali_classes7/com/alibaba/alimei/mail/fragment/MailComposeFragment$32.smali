.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 4047
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    .prologue
    .line 4047
    .line 5088
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5092
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->dismissLoadingDialog()V

    .line 5094
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z

    .line 5095
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5096
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->V(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 4047
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4047
    check-cast p1, Ljava/lang/String;

    .line 5050
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5053
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4047
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4074
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4085
    :goto_0
    return-void

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4070
    return-void
.end method
