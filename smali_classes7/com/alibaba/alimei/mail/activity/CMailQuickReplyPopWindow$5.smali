.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;
.super Ljava/lang/Object;
.source "CMailQuickReplyPopWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 551
    if-nez p2, :cond_1

    .line 552
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    .line 1433
    iget-boolean v0, v0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    .line 552
    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(I)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->reply_all_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Laxo$i;->reply_all_action:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 575
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 559
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(I)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->reply_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 561
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Laxo$i;->reply_action:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 563
    :cond_1
    if-ne p2, v2, :cond_3

    .line 564
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    .line 2433
    iget-boolean v0, v0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    .line 564
    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 566
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(I)V

    .line 567
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->reply_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 568
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Laxo$i;->reply_action:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->b(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;I)V

    goto :goto_0

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->b(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;I)V

    goto :goto_0
.end method
