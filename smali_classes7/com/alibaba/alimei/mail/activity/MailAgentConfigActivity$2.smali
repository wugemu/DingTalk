.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;
.super Laer;
.source "MailAgentConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-direct {p0}, Laer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 786
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 788
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 790
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 791
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 792
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1863
    const-string/jumbo v0, "mail_mailbind_normallogin_imap_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    const/4 v3, 0x0

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 821
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isSSL"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 825
    invoke-super {p0, p1}, Laer;->a(Z)V

    .line 827
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "changeConnectionSecutiryLevel ssl:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 828
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 827
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Z)V

    .line 831
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 798
    invoke-static {}, Lafw;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 799
    .local v0, "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;)V

    invoke-static {v0, v1}, Lafw;->a([Ljava/security/cert/X509Certificate;Lxv;)V

    .line 815
    return-void
.end method
