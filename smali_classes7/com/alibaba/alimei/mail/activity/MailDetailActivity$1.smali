.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 4
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 201
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "basic_SendMail"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget v1, p1, Lyc;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 209
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    sget v3, Laxo$i;->dt_cmail_send_mail_fail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    iget v1, p1, Lyc;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    sget v3, Laxo$i;->dt_cmail_sending_mail_success:I

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
