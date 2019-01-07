.class public abstract Ldbj;
.super Lctv;
.source "UserTaoGoodsCardAbsViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected final a:Z

.field protected aa:I

.field protected ab:Ljava/lang/String;

.field private ac:Landroid/view/View;

.field private ad:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private ae:Landroid/widget/TextView;

.field protected b:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ldbj;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ldbj;->aa:I

    .line 48
    iput-boolean p1, p0, Ldbj;->a:Z

    .line 49
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldbj;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 50
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 129
    sget v0, Lctk$f;->stub_tao_benefit_body:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldbj;->ac:Landroid/view/View;

    .line 130
    sget v0, Lctk$f;->tv_taocard_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbj;->Y:Landroid/widget/TextView;

    .line 131
    sget v0, Lctk$f;->tv_taocard_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbj;->Z:Landroid/widget/TextView;

    .line 132
    sget v0, Lctk$f;->iv_taocard_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldbj;->S:Landroid/widget/ImageView;

    .line 133
    sget v0, Lctk$f;->iv_tao_card_from:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Ldbj;->ad:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 134
    sget v0, Lctk$f;->tv_tao_card_from:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldbj;->ae:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p0, p2}, Ldbj;->c(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 54
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    if-eqz v9, :cond_0

    instance-of v9, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v9, :cond_0

    move-object v9, p2

    .line 55
    check-cast v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v8, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 56
    .local v8, "thirdPartyDo":Ljava/lang/Object;
    instance-of v9, v8, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    if-eqz v9, :cond_0

    move-object v4, v8

    .line 57
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    .line 58
    .local v4, "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    iget-object v9, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->msgSummary4B:Ljava/lang/String;

    iput-object v9, p0, Ldbj;->ab:Ljava/lang/String;

    .line 60
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->bgIcon:Ljava/lang/String;

    .line 61
    .local v0, "bodyBgImageUrl":Ljava/lang/String;
    iget-object v5, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->picUrl:Ljava/lang/String;

    .line 62
    .local v5, "picUrl":Ljava/lang/String;
    iget-object v9, p0, Ldbj;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v10, p0, Ldbj;->ac:Landroid/view/View;

    invoke-interface {v9, v10, v0, v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 64
    iget-object v9, p0, Ldbj;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v10, p0, Ldbj;->S:Landroid/widget/ImageView;

    invoke-interface {v9, v10, v5, v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 66
    iget-object v9, p0, Ldbj;->ad:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v10, Lctk$i;->icon_tb_shop_fill:I

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 69
    iget-object v9, p0, Ldbj;->Y:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->desc:Ljava/lang/String;

    .line 73
    .local v1, "descText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 74
    iget-object v9, p0, Ldbj;->Z:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u00a5 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    iget-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->from:Ljava/lang/String;

    .line 81
    .local v2, "fromText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 82
    iget-object v9, p0, Ldbj;->ae:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_1
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->fromTextColor:Ljava/lang/String;

    .line 88
    .local v3, "fromTextColor":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 89
    iget-object v9, p0, Ldbj;->ae:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :goto_2
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->senderActionUrl:Ljava/lang/String;

    .line 95
    .local v7, "senderUrl":Ljava/lang/String;
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->receiverActionUrl:Ljava/lang/String;

    .line 96
    .local v6, "receiverUrl":Ljava/lang/String;
    iget-object v9, p0, Ldbj;->r:Landroid/view/View;

    new-instance v10, Ldbj$1;

    invoke-direct {v10, p0, v7, v6}, Ldbj$1;-><init>(Ldbj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v9, p0, Ldbj;->r:Landroid/view/View;

    new-instance v10, Ldbj$2;

    invoke-direct {v10, p0}, Ldbj$2;-><init>(Ldbj;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    .end local v0    # "bodyBgImageUrl":Ljava/lang/String;
    .end local v1    # "descText":Ljava/lang/String;
    .end local v2    # "fromText":Ljava/lang/String;
    .end local v3    # "fromTextColor":Ljava/lang/String;
    .end local v4    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .end local v5    # "picUrl":Ljava/lang/String;
    .end local v6    # "receiverUrl":Ljava/lang/String;
    .end local v7    # "senderUrl":Ljava/lang/String;
    .end local v8    # "thirdPartyDo":Ljava/lang/Object;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {p0, p1, p2}, Ldbj;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 115
    return-void

    .line 76
    .restart local v0    # "bodyBgImageUrl":Ljava/lang/String;
    .restart local v1    # "descText":Ljava/lang/String;
    .restart local v4    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .restart local v5    # "picUrl":Ljava/lang/String;
    .restart local v8    # "thirdPartyDo":Ljava/lang/Object;
    :cond_1
    iget-object v9, p0, Ldbj;->Z:Landroid/widget/TextView;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    .restart local v2    # "fromText":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Ldbj;->ae:Landroid/widget/TextView;

    sget v10, Lctk$i;->dt_im_cspace_shop_item:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 91
    .restart local v3    # "fromTextColor":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Ldbj;->ae:Landroid/widget/TextView;

    iget-object v10, p0, Ldbj;->d:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lctk$c;->card_from_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "couponBundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget v1, Lctk$i;->dt_im_message_linkcard_nourl_error:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Ldbj;->d:Landroid/app/Activity;

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
    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldbj;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_link:I

    invoke-static {v2}, Ldbj;->b(I)Ljava/lang/String;

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
    .line 150
    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_item:I

    invoke-static {v1}, Ldbj;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v1, p0, Ldbj;->ab:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Ldbj;->ab:Ljava/lang/String;

    goto :goto_0
.end method
