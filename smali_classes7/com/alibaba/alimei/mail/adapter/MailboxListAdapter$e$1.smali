.class final Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;
.super Ljava/lang/Object;
.source "MailboxListAdapter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrr;

.field final synthetic b:Lcom/alibaba/alimei/sdk/model/MailTagModel;

.field final synthetic c:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;Lrr;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;->c:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;->a:Lrr;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;->b:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1004
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 993
    check-cast p1, Ljava/lang/Integer;

    .line 1996
    if-eqz p1, :cond_6

    .line 1997
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;->c:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;->a:Lrr;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;->b:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 2014
    if-eqz v2, :cond_0

    .line 2017
    sget v0, Laxo$f;->new_mail_count:I

    .line 2100
    invoke-virtual {v2, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 2017
    check-cast v0, Landroid/widget/TextView;

    .line 2018
    sget v1, Laxo$f;->unread_count_layout:I

    .line 3100
    invoke-virtual {v2, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v6

    .line 2019
    sget v1, Laxo$f;->unread_mail_dot:I

    .line 4100
    invoke-virtual {v2, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v7

    .line 2021
    sget v1, Laxo$f;->unread_count:I

    .line 5100
    invoke-virtual {v2, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 2021
    check-cast v1, Landroid/widget/TextView;

    .line 2022
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-nez v1, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    if-nez v3, :cond_2

    .line 2028
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2029
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6096
    :cond_2
    iget-object v3, v2, Lrr;->a:Landroid/content/Context;

    .line 2033
    invoke-static {v3}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v3

    .line 6183
    iget-boolean v3, v3, Lacl;->a:Z

    .line 7096
    iget-object v8, v2, Lrr;->a:Landroid/content/Context;

    .line 2034
    invoke-static {v8}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v8

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lacl;->b(Ljava/lang/String;)Z

    move-result v8

    .line 8096
    iget-object v2, v2, Lrr;->a:Landroid/content/Context;

    .line 9052
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 9057
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Laxo$c;->ui_common_content_bg_color:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9058
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9059
    sget v1, Laxo$e;->cmail_new_mail_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9060
    if-eqz v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    .line 9061
    if-eqz v3, :cond_4

    .line 9062
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 9063
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9064
    const-wide/16 v2, 0x63

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 9065
    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9067
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9070
    :cond_4
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 9071
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9072
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9075
    :cond_5
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9076
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1999
    :cond_6
    const-string/jumbo v0, "  queryTagNewMailCounts return null~!"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
