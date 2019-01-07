.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$4;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$4;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 453
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$4;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$4;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 4253
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4254
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k()V

    .line 456
    :cond_0
    return-void
.end method
