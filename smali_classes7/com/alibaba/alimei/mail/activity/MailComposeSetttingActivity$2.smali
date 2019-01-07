.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;
.super Ljava/lang/Object;
.source "MailComposeSetttingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->d(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Z)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->e(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Z)V

    goto :goto_0
.end method
