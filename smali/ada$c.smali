.class Lada$c;
.super Lada$a;
.source "MailParticipantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lada;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field j:Landroid/widget/LinearLayout;

.field final synthetic k:Lada;


# direct methods
.method public constructor <init>(Lada;)V
    .locals 1
    .param p1, "this$0"    # Lada;

    .prologue
    .line 346
    iput-object p1, p0, Lada$c;->k:Lada;

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lada$a;-><init>(I)V

    .line 348
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 352
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxo$g;->alm_cmail_fragment_mail_participant_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->avatar:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iput-object v1, p0, Lada$c;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 354
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lada$c;->e:Landroid/widget/TextView;

    .line 355
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lada$c;->f:Landroid/widget/TextView;

    .line 356
    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lada$c;->g:Landroid/widget/TextView;

    .line 357
    sget v1, Laxo$f;->mail_status_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lada$c;->h:Landroid/widget/TextView;

    .line 358
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lada$c;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 359
    const v1, 0x102000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lada$c;->j:Landroid/widget/LinearLayout;

    .line 361
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 367
    iget-object v5, p0, Lada$c;->k:Lada;

    iget-object v5, v5, Lada;->a:Lfk;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 368
    .local v3, "resourceId":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 371
    .local v4, "rs":Landroid/content/res/Resources;
    iget-object v5, p0, Lada$c;->c:Lada;

    invoke-virtual {v5}, Lada;->d()Z

    move-result v2

    .line 372
    .local v2, "isSelfSent":Z
    if-eqz v2, :cond_4

    invoke-static {}, Lacg;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lada$c;->k:Lada;

    invoke-static {v5}, Lada;->b(Lada;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 373
    const-string/jumbo v5, "unread"

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    iget-object v5, p0, Lada$c;->e:Landroid/widget/TextView;

    sget v6, Laxo$c;->ui_common_theme_bg_color:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    :goto_0
    if-eqz v3, :cond_3

    .line 379
    iget-object v5, p0, Lada$c;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 384
    :goto_1
    iget-object v5, p0, Lada$c;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :goto_2
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-static {v5, v6}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "alias":Ljava/lang/String;
    iget-object v5, p0, Lada$c;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v5, p0, Lada$c;->g:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v5

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 394
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v5, v6, v7}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 395
    .local v1, "isSameOrg":Z
    if-eqz v1, :cond_5

    .line 396
    iget-object v5, p0, Lada$c;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lada$c;->k:Lada;

    invoke-static {v6}, Lada;->c(Lada;)Landroid/content/Context;

    move-result-object v6

    sget v7, Laxo$c;->ui_common_content_fg_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    :goto_3
    const/4 v5, 0x2

    iget v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    :cond_0
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v5}, Lrx;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 402
    :cond_1
    iget-object v5, p0, Lada$c;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1167
    invoke-virtual {v5, v8, v8, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 403
    iget-object v5, p0, Lada$c;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    sget v6, Laxo$e;->cmail_group_icon:I

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setDefaultRes(I)V

    .line 404
    iget-object v5, p0, Lada$c;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    sget v6, Laxo$e;->cmail_group_icon:I

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setImageResource(I)V

    .line 405
    iget-object v5, p0, Lada$c;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 469
    :goto_4
    return-void

    .line 376
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "isSameOrg":Z
    :cond_2
    iget-object v5, p0, Lada$c;->e:Landroid/widget/TextView;

    sget v6, Laxo$c;->cmail_color_bfc0c1:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v6, p0, Lada$c;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lada$c;->k:Lada;

    iget-object v5, v5, Lada;->a:Lfk;

    const-string/jumbo v7, "unknown"

    invoke-virtual {v5, v7}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 386
    :cond_4
    iget-object v5, p0, Lada$c;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 398
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v1    # "isSameOrg":Z
    :cond_5
    iget-object v5, p0, Lada$c;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lada$c;->k:Lada;

    invoke-static {v6}, Lada;->d(Lada;)Landroid/content/Context;

    move-result-object v6

    sget v7, Laxo$c;->ui_common_warming_bg_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 408
    :cond_6
    iget-object v5, p0, Lada$c;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iget-object v7, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    iget-object v8, p0, Lada$c;->k:Lada;

    iget-boolean v8, v8, Lada;->j:Z

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 409
    iget-object v5, p0, Lada$c;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_4
.end method
