.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$1;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->b(Ljava/lang/String;)V
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
    .line 435
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1795
    const-string/jumbo v0, "mail_delete_draft_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->finish()V

    .line 440
    return-void
.end method
