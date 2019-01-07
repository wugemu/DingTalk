.class final Lacy$a;
.super Lada$c;
.source "MailMeetingParticipantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lacy;


# direct methods
.method constructor <init>(Lacy;)V
    .locals 0
    .param p1, "this$0"    # Lacy;

    .prologue
    .line 87
    iput-object p1, p0, Lacy$a;->a:Lacy;

    invoke-direct {p0, p1}, Lada$c;-><init>(Lada;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lada$c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 96
    iget-object v4, p0, Lacy$a;->a:Lacy;

    iget-object v4, v4, Lacy;->a:Lfk;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    .local v3, "rs":Landroid/content/res/Resources;
    sget v4, Laxo$d;->alm_cmail_mail_folders_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 102
    .local v2, "paddingLeft":I
    iget-object v4, p0, Lacy$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v4, p0, Lacy$a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 104
    iget-object v4, p0, Lacy$a;->f:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lacy$a;->g:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lacy$a;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lacy$a;->c:Lada;

    invoke-virtual {v4}, Lada;->d()Z

    move-result v1

    .line 110
    .local v1, "isSelfSent":Z
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v4

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 111
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v4, v5, v6}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, "isSameOrg":Z
    if-eqz v0, :cond_2

    .line 114
    iget-object v4, p0, Lacy$a;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lacy$a;->a:Lacy;

    invoke-static {v5}, Lacy;->a(Lacy;)Landroid/content/Context;

    move-result-object v5

    sget v6, Laxo$c;->ui_common_content_fg_color:I

    invoke-static {v5, v6}, Ldp;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    :goto_0
    const/4 v4, 0x2

    iget v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v4}, Lrx;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    :cond_1
    iget-object v4, p0, Lacy$a;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1167
    invoke-virtual {v4, v9, v9, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 121
    iget-object v4, p0, Lacy$a;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    sget v5, Laxo$e;->cmail_group_icon:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setDefaultRes(I)V

    .line 122
    iget-object v4, p0, Lacy$a;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    sget v5, Laxo$e;->cmail_group_icon:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setImageResource(I)V

    .line 123
    iget-object v4, p0, Lacy$a;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 129
    :goto_1
    return-void

    .line 116
    :cond_2
    iget-object v4, p0, Lacy$a;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lacy$a;->a:Lacy;

    invoke-static {v5}, Lacy;->b(Lacy;)Landroid/content/Context;

    move-result-object v5

    sget v6, Laxo$c;->ui_common_warming_bg_color:I

    invoke-static {v5, v6}, Ldp;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v4, p0, Lacy$a;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    iget-object v7, p0, Lacy$a;->a:Lacy;

    iget-boolean v7, v7, Lacy;->j:Z

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    iget-object v4, p0, Lacy$a;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1
.end method
