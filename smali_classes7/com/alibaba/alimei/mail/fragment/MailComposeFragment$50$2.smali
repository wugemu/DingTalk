.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1533
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 1535
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    iput-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Z)V

    .line 1542
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    .line 1546
    :cond_1
    return-void
.end method
