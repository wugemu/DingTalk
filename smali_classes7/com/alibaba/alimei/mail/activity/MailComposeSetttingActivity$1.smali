.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;
.super Ljava/lang/Object;
.source "MailComposeSetttingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 69
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Lrz;

    move-result-object v0

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    goto :goto_0
.end method
