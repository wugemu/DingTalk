.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;
.super Lsk;
.source "MailComposeSetttingActivity.java"


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
    .line 343
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {p0}, Lsk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .param p1, "component"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lsk;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "component"    # I

    .prologue
    .line 346
    if-nez p2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;I)I

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;I)I

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;I)I

    goto :goto_0
.end method
