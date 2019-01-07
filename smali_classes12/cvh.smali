.class public abstract Lcvh;
.super Lctv;
.source "FestivalRedPacketsViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Lcom/alibaba/doraemon/image/ImageMagician;

.field private a:Landroid/widget/FrameLayout;

.field protected b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p0, p2}, Lcvh;->c(Landroid/view/View;)V

    .line 116
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcvh;->Y:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 117
    sget v0, Lctk$f;->festival_msg_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvh;->b:Landroid/widget/ImageView;

    .line 118
    sget v0, Lctk$f;->redpackets_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvh;->S:Landroid/widget/TextView;

    .line 119
    sget v0, Lctk$f;->layout_festival:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcvh;->a:Landroid/widget/FrameLayout;

    .line 120
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcvh;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 52
    if-eqz p2, :cond_0

    instance-of v4, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_0

    move-object v4, p2

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 53
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 54
    .local v0, "data":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    iget-object v4, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->bgMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    iget-object v4, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->bgMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 61
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    iget-object v4, p0, Lcvh;->Y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcvh;->b:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v3, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 71
    .end local v3    # "url":Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    iget-object v4, p0, Lcvh;->S:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_2
    iget-object v4, p0, Lcvh;->d:Landroid/app/Activity;

    invoke-static {v4}, Ldkl;->a(Landroid/content/Context;)Ldkl;

    invoke-static {p2}, Ldkl;->a(Lcom/alibaba/wukong/im/Message;)I

    move-result v2

    .line 1137
    .local v2, "status":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 1138
    iget-object v4, p0, Lcvh;->a:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcvh;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$e;->drawable_white_alpha_60:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_3
    iget-object v4, p0, Lcvh;->r:Landroid/view/View;

    new-instance v5, Lcvh$1;

    invoke-direct {v5, p0, v0, p2, p1}, Lcvh$1;-><init>(Lcvh;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .end local v0    # "data":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .end local v2    # "status":I
    :cond_0
    return-void

    .line 58
    .restart local v0    # "data":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .restart local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcvh;->Y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcvh;->b:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v6, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 65
    iget-object v4, p0, Lcvh;->b:Landroid/widget/ImageView;

    sget v5, Lctk$e;->festival_msg_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 68
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcvh;->Y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcvh;->b:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v6, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 69
    iget-object v4, p0, Lcvh;->b:Landroid/widget/ImageView;

    sget v5, Lctk$e;->festival_msg_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 74
    :cond_3
    iget-object v4, p0, Lcvh;->S:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1140
    .restart local v2    # "status":I
    :cond_4
    iget-object v4, p0, Lcvh;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcvh;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_lucky_money:I

    invoke-static {v2}, Lcvh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcvh;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcvh;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_lucky_money:I

    invoke-static {v2}, Lcvh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcvh;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcvh;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
