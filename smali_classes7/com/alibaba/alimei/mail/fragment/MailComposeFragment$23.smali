.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;
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
        "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
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
    .line 733
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 747
    const-string/jumbo v0, "MailComposeFragment.initSenderMail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 748
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 733
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 1736
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1739
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->defSendMail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->defSendMail:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 733
    :cond_1
    return-void
.end method
