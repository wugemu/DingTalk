.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k()V
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
        "Ljava/lang/Long;",
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
    .line 4751
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4771
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "mail.sendMail"

    invoke-static {v1, v2, v3}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 4773
    const-string/jumbo v1, "MailComposeFragment.executeMessageSend"

    .line 4774
    invoke-static {p1}, Lafg;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Ljava/lang/String;

    move-result-object v2

    .line 4773
    invoke-static {v1, v2}, Lafe;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4775
    const-string/jumbo v1, "mail.sendMail"

    invoke-static {v1, p1}, Lafe;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 4777
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4791
    :cond_0
    :goto_0
    return-void

    .line 4780
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 4781
    const-string/jumbo v1, "MailComposeFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "send mail"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4782
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v1, v2, :cond_2

    .line 4784
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ac(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    goto :goto_0

    .line 4786
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 4787
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4788
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4751
    .line 5754
    invoke-static {}, Lafe;->a()V

    .line 5755
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.sendMail"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 5757
    const-string/jumbo v0, "mail.sendMail"

    const-string/jumbo v1, "MailComposeFragment"

    invoke-static {v0, v1}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5759
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5763
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 5764
    if-eqz v0, :cond_0

    .line 5765
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4751
    :cond_0
    return-void
.end method
