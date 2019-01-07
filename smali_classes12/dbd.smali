.class public abstract Ldbd;
.super Lctv;
.source "UserTaoResCardAbsViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected final a:Z

.field protected aa:I

.field protected ab:Landroid/view/View;

.field protected ac:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field protected ad:Landroid/widget/TextView;

.field protected ae:Ljava/lang/String;

.field protected b:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ldbd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Ldbd;->aa:I

    .line 47
    iput-boolean p1, p0, Ldbd;->a:Z

    .line 48
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldbd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 130
    sget v0, Lctk$f;->stub_tao_benefit_body:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldbd;->ab:Landroid/view/View;

    .line 131
    sget v0, Lctk$f;->tv_taocard_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbd;->Y:Landroid/widget/TextView;

    .line 132
    sget v0, Lctk$f;->tv_taocard_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbd;->Z:Landroid/widget/TextView;

    .line 133
    sget v0, Lctk$f;->iv_taocard_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldbd;->S:Landroid/widget/ImageView;

    .line 134
    sget v0, Lctk$f;->iv_tao_card_from:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Ldbd;->ac:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 135
    sget v0, Lctk$f;->tv_tao_card_from:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbd;->ad:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0, p2}, Ldbd;->c(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 53
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    if-eqz v8, :cond_0

    instance-of v8, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v8, :cond_0

    move-object v8, p2

    .line 54
    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v7, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 55
    .local v7, "thirdPartyDo":Ljava/lang/Object;
    instance-of v8, v7, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    if-eqz v8, :cond_0

    move-object v3, v7

    .line 56
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    .line 57
    .local v3, "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->msgSummary4B:Ljava/lang/String;

    iput-object v8, p0, Ldbd;->ae:Ljava/lang/String;

    .line 59
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->bgIcon:Ljava/lang/String;

    .line 60
    .local v0, "bodyBgImageUrl":Ljava/lang/String;
    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->picUrl:Ljava/lang/String;

    .line 63
    .local v4, "picUrl":Ljava/lang/String;
    iget-object v8, p0, Ldbd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v9, p0, Ldbd;->ab:Landroid/view/View;

    invoke-interface {v8, v9, v0, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 65
    iget-object v8, p0, Ldbd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v9, p0, Ldbd;->S:Landroid/widget/ImageView;

    invoke-interface {v8, v9, v4, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 67
    iget-object v8, p0, Ldbd;->ac:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v9, Lctk$i;->icon_tb_text_fill:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 70
    iget-object v8, p0, Ldbd;->Y:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v8, p0, Ldbd;->Z:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v8, p0, Ldbd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v9, p0, Ldbd;->S:Landroid/widget/ImageView;

    invoke-interface {v8, v9, v4, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 79
    iget-object v2, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->fromTextColor:Ljava/lang/String;

    .line 80
    .local v2, "fromTextColor":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 81
    iget-object v8, p0, Ldbd;->ad:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :goto_0
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->from:Ljava/lang/String;

    .line 88
    .local v1, "fromText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 89
    iget-object v8, p0, Ldbd;->ad:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_1
    iget-object v6, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->senderActionUrl:Ljava/lang/String;

    .line 95
    .local v6, "senderUrl":Ljava/lang/String;
    iget-object v5, v3, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->receiverActionUrl:Ljava/lang/String;

    .line 96
    .local v5, "receiverUrl":Ljava/lang/String;
    iget-object v8, p0, Ldbd;->r:Landroid/view/View;

    new-instance v9, Ldbd$1;

    invoke-direct {v9, p0, v6, v5}, Ldbd$1;-><init>(Ldbd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v8, p0, Ldbd;->r:Landroid/view/View;

    new-instance v9, Ldbd$2;

    invoke-direct {v9, p0}, Ldbd$2;-><init>(Ldbd;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    .end local v0    # "bodyBgImageUrl":Ljava/lang/String;
    .end local v1    # "fromText":Ljava/lang/String;
    .end local v2    # "fromTextColor":Ljava/lang/String;
    .end local v3    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .end local v4    # "picUrl":Ljava/lang/String;
    .end local v5    # "receiverUrl":Ljava/lang/String;
    .end local v6    # "senderUrl":Ljava/lang/String;
    .end local v7    # "thirdPartyDo":Ljava/lang/Object;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {p0, p1, p2}, Ldbd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 116
    return-void

    .line 83
    .restart local v0    # "bodyBgImageUrl":Ljava/lang/String;
    .restart local v2    # "fromTextColor":Ljava/lang/String;
    .restart local v3    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .restart local v4    # "picUrl":Ljava/lang/String;
    .restart local v7    # "thirdPartyDo":Ljava/lang/Object;
    :cond_1
    iget-object v8, p0, Ldbd;->ad:Landroid/widget/TextView;

    iget-object v9, p0, Ldbd;->d:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lctk$c;->card_from_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    .restart local v1    # "fromText":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Ldbd;->ad:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_im_linkcard_attachment_shop_link:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "couponBundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget v1, Lctk$i;->dt_im_message_linkcard_nourl_error:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Ldbd;->d:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldbd;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_link:I

    invoke-static {v2}, Ldbd;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_item:I

    invoke-static {v1}, Ldbd;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v1, p0, Ldbd;->ae:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Ldbd;->ae:Ljava/lang/String;

    goto :goto_0
.end method
