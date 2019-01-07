.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$1;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    .line 1505
    :cond_0
    return-void

    .line 1501
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
