.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10$1;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Landroid/view/View;)V

    .line 257
    :cond_0
    return-void
.end method
