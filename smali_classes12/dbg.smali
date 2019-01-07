.class public abstract Ldbg;
.super Lctv;
.source "UserTaoCouponAbsCardViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected final a:Z

.field protected aa:I

.field protected ab:Landroid/view/View;

.field protected ac:Landroid/widget/ImageView;

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

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ldbg;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ldbg;->aa:I

    .line 47
    iput-boolean p1, p0, Ldbg;->a:Z

    .line 48
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldbg;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 144
    sget v0, Lctk$f;->stub_tao_benefit_body:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldbg;->ab:Landroid/view/View;

    .line 145
    sget v0, Lctk$f;->tv_taocard_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbg;->Y:Landroid/widget/TextView;

    .line 146
    sget v0, Lctk$f;->tv_taocard_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbg;->Z:Landroid/widget/TextView;

    .line 147
    sget v0, Lctk$f;->iv_taocard_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldbg;->S:Landroid/widget/ImageView;

    .line 148
    sget v0, Lctk$f;->iv_tao_card_from:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldbg;->ac:Landroid/widget/ImageView;

    .line 149
    sget v0, Lctk$f;->tv_tao_card_from:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbg;->ad:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p0, p2}, Ldbg;->c(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    if-eqz v10, :cond_0

    instance-of v10, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v10, :cond_0

    move-object v10, p2

    .line 54
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v9, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 55
    .local v9, "thirdPartyDo":Ljava/lang/Object;
    instance-of v10, v9, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    if-eqz v10, :cond_0

    move-object v6, v9

    .line 56
    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    .line 57
    .local v6, "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    iget-object v10, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->msgSummary4B:Ljava/lang/String;

    iput-object v10, p0, Ldbg;->ae:Ljava/lang/String;

    .line 59
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->bgIcon:Ljava/lang/String;

    .line 60
    .local v0, "bodyBgImageUrl":Ljava/lang/String;
    iget-object v10, p0, Ldbg;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v11, p0, Ldbg;->ab:Landroid/view/View;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v0, v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 63
    iget-object v5, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->picUrl:Ljava/lang/String;

    .line 64
    .local v5, "imageUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 65
    iget-object v10, p0, Ldbg;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v11, p0, Ldbg;->S:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v5, v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 72
    :goto_0
    iget-object v10, p0, Ldbg;->Y:Landroid/widget/TextView;

    iget-object v11, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v10, p0, Ldbg;->Z:Landroid/widget/TextView;

    iget-object v11, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->desc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v10, p0, Ldbg;->Z:Landroid/widget/TextView;

    sget v11, Lctk$c;->card_desc_color_opacity_80:I

    invoke-static {p1, v11}, Ldp;->c(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v3, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->from:Ljava/lang/String;

    .line 80
    .local v3, "fromText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 81
    iget-object v10, p0, Ldbg;->ad:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_1
    iget-object v4, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->fromTextColor:Ljava/lang/String;

    .line 88
    .local v4, "fromTextColor":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 91
    :try_start_0
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "color":I
    iget-object v10, p0, Ldbg;->ad:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "color":I
    :goto_2
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->fromIcon:Ljava/lang/String;

    .line 103
    .local v2, "fromImageUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 104
    iget-object v10, p0, Ldbg;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v11, p0, Ldbg;->ac:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v2, v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 109
    :goto_3
    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->senderActionUrl:Ljava/lang/String;

    .line 110
    .local v8, "senderUrl":Ljava/lang/String;
    iget-object v7, v6, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->receiverActionUrl:Ljava/lang/String;

    .line 111
    .local v7, "receiverUrl":Ljava/lang/String;
    iget-object v10, p0, Ldbg;->r:Landroid/view/View;

    new-instance v11, Ldbg$1;

    invoke-direct {v11, p0, v8, v7}, Ldbg$1;-><init>(Ldbg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v10, p0, Ldbg;->r:Landroid/view/View;

    new-instance v11, Ldbg$2;

    invoke-direct {v11, p0}, Ldbg$2;-><init>(Ldbg;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    .end local v0    # "bodyBgImageUrl":Ljava/lang/String;
    .end local v2    # "fromImageUrl":Ljava/lang/String;
    .end local v3    # "fromText":Ljava/lang/String;
    .end local v4    # "fromTextColor":Ljava/lang/String;
    .end local v5    # "imageUrl":Ljava/lang/String;
    .end local v6    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .end local v7    # "receiverUrl":Ljava/lang/String;
    .end local v8    # "senderUrl":Ljava/lang/String;
    .end local v9    # "thirdPartyDo":Ljava/lang/Object;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {p0, p1, p2}, Ldbg;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 130
    return-void

    .line 67
    .restart local v0    # "bodyBgImageUrl":Ljava/lang/String;
    .restart local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .restart local v9    # "thirdPartyDo":Ljava/lang/Object;
    :cond_1
    iget-object v10, p0, Ldbg;->S:Landroid/widget/ImageView;

    iget-object v11, p0, Ldbg;->d:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lctk$e;->im_ic_tao_card_coupon_icon:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 83
    .restart local v3    # "fromText":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Ldbg;->ad:Landroid/widget/TextView;

    sget v11, Lctk$i;->dt_im_cspace_coupon:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 97
    .restart local v4    # "fromTextColor":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Ldbg;->ad:Landroid/widget/TextView;

    iget-object v11, p0, Ldbg;->d:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lctk$c;->card_from_color:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 106
    .restart local v2    # "fromImageUrl":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Ldbg;->ac:Landroid/widget/ImageView;

    iget-object v11, p0, Ldbg;->d:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lctk$e;->im_ic_tao_card_coupon_from:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 95
    .end local v2    # "fromImageUrl":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "couponBundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget v1, Lctk$i;->dt_im_message_linkcard_nourl_error:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Ldbg;->d:Landroid/app/Activity;

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
    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldbg;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_link:I

    invoke-static {v2}, Ldbg;->b(I)Ljava/lang/String;

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
    .line 165
    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_item:I

    invoke-static {v1}, Ldbg;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v1, p0, Ldbg;->ae:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Ldbg;->ae:Ljava/lang/String;

    goto :goto_0
.end method
