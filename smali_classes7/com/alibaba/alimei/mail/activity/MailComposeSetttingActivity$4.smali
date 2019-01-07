.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;
.super Ljava/lang/Object;
.source "MailComposeSetttingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListAdapter;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->f(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;

    iget-object v0, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->c:Ljava/util/Date;

    .line 282
    .local v0, "target":Ljava/util/Date;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 284
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->h(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    sget v3, Laxo$i;->dt_mail_send_time_format:I

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
